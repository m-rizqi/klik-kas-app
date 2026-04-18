
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:klik_kas/core/constants/env.dart';

final Environment environment = Environment.instance;
class Environment {
  Environment._internal();

  static final Environment _instance = Environment._internal();

  static Environment get instance => _instance;

  Env? env;
  String get apiUrl => dotenv.env['API_URL'] ?? 'API URL not configured';

  Future<void> initConfig(Env env) async {
    try {
      this.env = env;
      await dotenv.load(fileName: '.env.${env.name}');
    } catch (_) {
      await dotenv.load(fileName: '.env.example');
    }
  }
}