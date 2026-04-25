import 'package:dartz/dartz.dart';
import 'package:klik_kas/core/errors/failure.dart';
import 'package:klik_kas/features/auth/domain/repositories/auth_repository.dart';

class SignOutUseCase {
  SignOutUseCase({required this.authRepository});

  final AuthRepository authRepository;

  Future<Either<Failure, void>> call() async {
    return authRepository.signOut();
  }
}