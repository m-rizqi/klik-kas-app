import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:klik_kas/config/routes/app_router.dart';
import 'package:klik_kas/features/auth/data/data_sources/remote/auth_remote_data_source.dart';
import 'package:klik_kas/features/auth/data/repositories/auth_reppository_impl.dart';
import 'package:klik_kas/features/auth/domain/repositories/auth_repository.dart';
import 'package:klik_kas/features/auth/domain/use_cases/get_current_user_use_case.dart';
import 'package:klik_kas/features/auth/domain/use_cases/google_sign_in_use_case.dart';
import 'package:klik_kas/features/auth/domain/use_cases/sign_out_use_case.dart';
import 'package:klik_kas/features/auth/login/presentation/bloc/login_bloc.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

final GetIt di = GetIt.instance;

Future<void> init() async {
  di
    // APP
    ..registerLazySingleton<GoRouter>(AppRouter.createRouter)
    ..registerLazySingleton<SupabaseClient>(() => Supabase.instance.client)
    ..registerLazySingleton<GoogleSignIn>(() => GoogleSignIn.instance)
    //   DATA SOURCES
    ..registerLazySingleton<AuthRemoteDataSource>(
      () => AuthRemoteDataSourceImpl(supabaseClient: di(), googleSignIn: di()),
    )
    // REPOSITORIES
    ..registerLazySingleton<AuthRepository>(
      () => AuthRepositoryImpl(remoteDataSource: di()),
    )
    //   USE CASES
    ..registerLazySingleton<GoogleSignInUseCase>(
      () => GoogleSignInUseCase(authRepository: di()),
    )
    ..registerLazySingleton<SignOutUseCase>(
      () => SignOutUseCase(authRepository: di()),
    )
    ..registerLazySingleton<GetCurrentUserUseCase>(
      () => GetCurrentUserUseCase(authRepository: di()),
    )
    // BLOCS
    ..registerFactory<LoginBloc>(
      () => LoginBloc(
        googleSignInUseCase: di<GoogleSignInUseCase>(),
        signOutUseCase: di<SignOutUseCase>(),
      ),
    );
}
