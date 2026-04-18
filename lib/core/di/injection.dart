import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:klik_kas/config/routes/app_router.dart';

final GetIt di = GetIt.instance;
Future<void> init() async {
  di
    .registerLazySingleton<GoRouter>(AppRouter.createRouter);
}
