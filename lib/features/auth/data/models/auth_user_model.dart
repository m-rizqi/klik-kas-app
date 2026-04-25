import 'package:klik_kas/features/auth/domain/entities/auth_user_entity.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

class AuthUserModel extends AuthUserEntity {
  const AuthUserModel({
    required super.id,
    super.email,
    super.name,
    super.avatarUrl,
  });

  factory AuthUserModel.fromSupabaseUser(User user) {
    final meta = user.userMetadata;
    return AuthUserModel(
      id: user.id,
      email: user.email,
      name: meta?['full_name'] as String? ?? meta?['name'] as String?,
      avatarUrl: meta?['avatar_url'] as String? ??
          meta?['picture'] as String?,
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'name': name,
    'avatar_url': avatarUrl,
  };
}
