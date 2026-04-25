import 'package:dartz/dartz.dart';
import 'package:klik_kas/core/errors/failure.dart';
import 'package:klik_kas/features/auth/domain/entities/auth_user_entity.dart';
import 'package:klik_kas/features/auth/domain/repositories/auth_repository.dart';

class GoogleSignInUseCase {
  GoogleSignInUseCase({required this.authRepository});

  final AuthRepository authRepository;

  Future<Either<Failure, AuthUserEntity>> call() async {
    return authRepository.signInWithGoogle();
  }
}