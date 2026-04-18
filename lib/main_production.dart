import 'package:klik_kas/app.dart';
import 'package:klik_kas/bootstrap.dart';
import 'package:klik_kas/core/constants/env.dart';

void main() async {
  await bootstrap(
    Env.production,
        () => const App(),
  );
}