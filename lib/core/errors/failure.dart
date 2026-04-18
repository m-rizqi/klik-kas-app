import 'package:equatable/equatable.dart';

abstract class Failure extends Equatable {
  const Failure(this.message);
  final String message;

  @override
  List<Object?> get props => [message];
}

class ServerFailure extends Failure {
  const ServerFailure(super.message, {this.statusCode});
  final int? statusCode;
}

class NetworkFailure extends Failure {
  const NetworkFailure()
      : super('No internet connection. Please check your settings.');
}

class ParsingFailure extends Failure {
  const ParsingFailure() : super('Failed to process data from the server.');
}

class AuthFailure extends Failure {
  const AuthFailure(super.message);
}

class CacheFailure extends Failure {
  const CacheFailure() : super('No local data found.');
}

class UnknownFailure extends Failure {
  const UnknownFailure([String? message])
    : super(message ?? 'An unexpected error occurred.');
}

class ClientFailure extends Failure {
  const ClientFailure([String? message])
    : super(message ?? 'An unexpected error occurred.');
}
