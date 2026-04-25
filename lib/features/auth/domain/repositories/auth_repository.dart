import 'package:dartz/dartz.dart';
import 'package:klik_kas/core/errors/failure.dart';
import 'package:klik_kas/features/auth/domain/entities/auth_user_entity.dart';

abstract class AuthRepository {
  Future<Either<Failure, AuthUserEntity>> signInWithGoogle();
  Future<Either<Failure, void>> signOut();
  Future<Either<Failure, AuthUserEntity?>> getCurrentUser();
}