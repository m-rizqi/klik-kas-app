import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:klik_kas/core/di/injection.dart';
import 'package:klik_kas/features/auth/login/presentation/bloc/login_bloc.dart';
import 'package:klik_kas/features/auth/login/presentation/pages/login_screen.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di<LoginBloc>(),
      child: const LoginScreen(),
    );
  }
}
