import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:klik_kas/config/env/environment.dart';
import 'package:klik_kas/core/constants/env.dart';
import 'package:klik_kas/core/di/injection.dart' as injection;
import 'package:supabase_flutter/supabase_flutter.dart';

class AppBlocObserver extends BlocObserver {
  const AppBlocObserver();

  @override
  void onChange(BlocBase<dynamic> bloc, Change<dynamic> change) {
    super.onChange(bloc, change);
    log('Bloc onChange(${bloc.runtimeType}, $change)');
  }

  @override
  void onError(BlocBase<dynamic> bloc, Object error, StackTrace stackTrace) {
    log('Bloc onError(${bloc.runtimeType}, $error, $stackTrace)');
    super.onError(bloc, error, stackTrace);
  }
}

Future<void> bootstrap(Env env, FutureOr<Widget> Function() builder) async {
  WidgetsFlutterBinding.ensureInitialized();

  FlutterError.onError = (details) {
    log(details.exceptionAsString(), stackTrace: details.stack);
  };

  Bloc.observer = const AppBlocObserver();

  await initConfig(env);

  runApp(await builder());
}

Future<void> initConfig(Env env) async {
  await environment.initConfig(env);
  await injection.init();
  await Supabase.initialize(
    url: environment.supabaseUrl,
    anonKey: environment.supabaseAnonKey,
  );
  final googleSignIn = GoogleSignIn.instance;
  unawaited(
    googleSignIn
        .initialize(
          clientId: environment.gcpAndroidClientId,
          serverClientId: environment.gcpWebClientId,
        )
        .then((_) {
          googleSignIn.authenticationEvents
              .listen((event) {
                log('Google Sign In: $event');
              })
              .onError((e) {
                log('Error Google Sign In: $e');
              });
        }),
  );
}
