import 'package:dartz/dartz.dart';
import 'package:klik_kas/core/errors/exceptions.dart';
import 'package:klik_kas/core/errors/failure.dart';
import 'package:klik_kas/features/auth/data/data_sources/remote/auth_remote_data_source.dart';
import 'package:klik_kas/features/auth/domain/entities/auth_user_entity.dart';
import 'package:klik_kas/features/auth/domain/repositories/auth_repository.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthRepositoryImpl extends AuthRepository {
  AuthRepositoryImpl({required this.remoteDataSource});

  final AuthRemoteDataSource remoteDataSource;

  // ── Google Sign-In ──────────────────────────────────────────────────────

  @override
  Future<Either<Failure, AuthUserEntity>> signInWithGoogle() async {
    try {
      final user = await remoteDataSource.signInWithGoogle();
      return Right(user);
    } on GoogleSignInCancelledException {
      return Left(GoogleSignInCancelledFailure());
    } on AuthException catch (e) {
      return Left(AuthFailure(e.message));
    } on NetworkException {
      return const Left(NetworkFailure());
    } catch (e) {
      return Left(
        AuthFailure('An unexpected error occurred: ${e.toString()}'),
      );
    }
  }

  // ── Sign Out ────────────────────────────────────────────────────────────

  @override
  Future<Either<Failure, void>> signOut() async {
    try {
      await remoteDataSource.signOut();
      return const Right(null);
    } on AuthException catch (e) {
      return Left(AuthFailure(e.message));
    } catch (e) {
      return Left(
        AuthFailure('Sign-out failed: ${e.toString()}'),
      );
    }
  }

  // ── Get Current User ────────────────────────────────────────────────────

  @override
  Future<Either<Failure, AuthUserEntity?>> getCurrentUser() async {
    try {
      final user = await remoteDataSource.getCurrentUser();
      return Right(user);
    } on AuthException catch (e) {
      return Left(AuthFailure(e.message));
    } catch (e) {
      return Left(
        AuthFailure('Failed to get current user: ${e.toString()}'),
      );
    }
  }
}