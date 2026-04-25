import 'package:equatable/equatable.dart';

abstract class LoginEvent extends Equatable {
  const LoginEvent();

  @override
  List<Object?> get props => [];
}

class LoginGoogleSignInPressed extends LoginEvent {
  const LoginGoogleSignInPressed();
}

class LoginSignUpPressed extends LoginEvent {
  const LoginSignUpPressed();
}

class LoginTermsPressed extends LoginEvent {
  const LoginTermsPressed();
}