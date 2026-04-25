import 'package:google_sign_in/google_sign_in.dart';
import 'package:klik_kas/core/errors/exceptions.dart';
import 'package:klik_kas/features/auth/data/models/auth_user_model.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

abstract class AuthRemoteDataSource {
  /// Signs the user in via Google OAuth and returns their profile.
  Future<AuthUserModel> signInWithGoogle();

  /// Signs the current user out from both Google and Supabase.
  Future<void> signOut();

  /// Returns the currently authenticated user, or null if none.
  Future<AuthUserModel?> getCurrentUser();
}

class AuthRemoteDataSourceImpl implements AuthRemoteDataSource {
  AuthRemoteDataSourceImpl({
    required this.supabaseClient,
    required this.googleSignIn,
  });

  final SupabaseClient supabaseClient;
  final GoogleSignIn googleSignIn;

  // ── Google Sign-In ──────────────────────────────────────────────────────

  @override
  Future<AuthUserModel> signInWithGoogle() async {
    try {
      // 1. Trigger the Google account picker
      final GoogleSignInAccount? googleUser = await googleSignIn.authenticate();

      if (googleUser == null) {
        // User dismissed the picker
        throw GoogleSignInCancelledException();
      }

      // 2. Get authentication tokens from the selected account
      final googleAuthentication = googleUser.authentication;
      const scopes = <String>[
        'email',
        'profile',
        'openid',
      ];

      final googleAuthorization = await googleUser.authorizationClient.authorizeScopes(scopes);

      final idToken = googleAuthentication.idToken;
      final accessToken = googleAuthorization.accessToken;

      if (idToken == null) {
        throw const AuthException(
          'Google Sign-In failed: missing idToken. '
              'Ensure a Web Client ID is configured in GoogleSignIn.',
        );
      }

      // 3. Exchange tokens with Supabase
      final response = await supabaseClient.auth.signInWithIdToken(
        provider: OAuthProvider.google,
        idToken: idToken,
        accessToken: accessToken,
      );

      final user = response.user;
      if (user == null) {
        throw const AuthException(
          'Supabase sign-in succeeded but returned no user.',
        );
      }

      return AuthUserModel.fromSupabaseUser(user);
    } on GoogleSignInCancelledException {
      rethrow;
    }  on AuthApiException catch (e) {
      throw AuthException('Supabase Auth error: ${e.message}');
    } catch (e) {
      throw AuthException('Google Sign-In failed: $e');
    }
  }

  // ── Sign Out ────────────────────────────────────────────────────────────

  @override
  Future<void> signOut() async {
    try {
      await Future.wait([
        googleSignIn.signOut(),
        supabaseClient.auth.signOut(),
      ]);
    } on AuthApiException catch (e) {
      throw AuthException('Sign-out error: ${e.message}');
    } catch (e) {
      throw AuthException('Sign-out failed: $e');
    }
  }

  // ── Get Current User ────────────────────────────────────────────────────

  @override
  Future<AuthUserModel?> getCurrentUser() async {
    try {
      final user = supabaseClient.auth.currentUser;
      if (user == null) return null;
      return AuthUserModel.fromSupabaseUser(user);
    } catch (e) {
      throw AuthException('Failed to get current user: $e');
    }
  }
}