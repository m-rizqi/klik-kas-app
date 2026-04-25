import 'package:bloc/bloc.dart';
import 'package:copy_with_extension/copy_with_extension.dart';
import 'package:equatable/equatable.dart';
import 'package:klik_kas/features/auth/domain/entities/auth_user_entity.dart';
import 'package:klik_kas/features/auth/domain/use_cases/google_sign_in_use_case.dart';
import 'package:klik_kas/features/auth/domain/use_cases/sign_out_use_case.dart';
import 'package:klik_kas/features/auth/login/presentation/bloc/login_event.dart';
import 'package:klik_kas/features/auth/login/presentation/bloc/login_state.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  LoginBloc({required this.googleSignInUseCase, required this.signOutUseCase})
    : super(const LoginState()) {
    on<LoginGoogleSignInPressed>(_onGoogleSignInPressed);
    on<LoginSignUpPressed>(_onSignUpPressed);
    on<LoginTermsPressed>(_onTermsPressed);
  }

  final GoogleSignInUseCase googleSignInUseCase;
  final SignOutUseCase signOutUseCase;

  Future<void> _onGoogleSignInPressed(
    LoginGoogleSignInPressed event,
    Emitter<LoginState> emit,
  ) async {
    if (state.isLoading) return;
    emit(state.copyWith(status: LoginStatus.googleSignInLoading));
    final result = await googleSignInUseCase();

    result.fold(
          (failure) => emit(
        state.copyWith(
          status: LoginStatus.error,
          errorResolver: (context) => failure.message,
        ),
      ),
          (user) => emit(
        state.copyWith(
          status: LoginStatus.success,
          user: user,
        ),
      ),
    );
  }

  Future<void> _onSignUpPressed(
    LoginSignUpPressed event,
    Emitter<LoginState> emit,
  ) async {
    if (state.isLoading) return;
    emit(state.copyWith(status: LoginStatus.openSignUp));
  }

  void _onTermsPressed(LoginTermsPressed event, Emitter<LoginState> emit) {
    if (state.isLoading) return;
    emit(state.copyWith(status: LoginStatus.openTermService));
  }
}
