
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:klik_kas/core/constants/env.dart';

final Environment environment = Environment.instance;
class Environment {
  Environment._internal();

  static final Environment _instance = Environment._internal();

  static Environment get instance => _instance;

  Env? env;
  String get apiUrl => dotenv.env['API_URL'] ?? 'API_URL not configured';
  String get supabaseUrl => dotenv.env['SUPABASE_URL'] ?? 'SUPABASE_URL not configured';
  String get supabaseAnonKey => dotenv.env['SUPABASE_ANON_KEY'] ?? 'SUPABASE_ANON_KEY not configured';
  String get gcpWebClientId => dotenv.env['GCP_WEB_CLIENT_ID'] ?? 'GCP_WEB_CLIENT_ID not configured';
  String get gcpAndroidClientId => dotenv.env['GCP_ANDROID_CLIENT_ID'] ?? 'GCP_ANDROID_CLIENT_ID not configured';

  Future<void> initConfig(Env env) async {
    try {
      this.env = env;
      await dotenv.load(fileName: '.env.${env.name}');
    } catch (_) {
      await dotenv.load(fileName: '.env.example');
    }
  }
}