import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';
import 'package:klik_kas/features/auth/domain/entities/auth_user_entity.dart';

part 'login_state.g.dart';

enum LoginStatus { initial, googleSignInLoading, signUpLoading, success, error, openSignUp, openTermService }

@CopyWith()
class LoginState extends Equatable {
  const LoginState({
    this.status = LoginStatus.initial,
    this.errorResolver,
    this.user,
  });

  final LoginStatus status;
  final AuthUserEntity? user;
  final String Function(BuildContext)? errorResolver;

  bool get isGoogleLoading => status == LoginStatus.googleSignInLoading;

  bool get isSignUpLoading => status == LoginStatus.signUpLoading;

  bool get isLoading => isGoogleLoading || isSignUpLoading;

  @override
  List<Object?> get props => [status, user, errorResolver];
}
