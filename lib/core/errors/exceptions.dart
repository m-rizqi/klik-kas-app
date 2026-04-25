class ServerException implements Exception {
  ServerException(this.message, {this.statusCode});
  final String message;
  final int? statusCode;
}

class CacheException implements Exception {
  CacheException([this.message = 'Local storage error']);
  final String message;
}

class NetworkException implements Exception {
  NetworkException([this.message = 'Connectivity lost']);
  final String message;
}

class GoogleSignInCancelledException implements Exception {
  GoogleSignInCancelledException();
}

