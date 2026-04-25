import 'package:equatable/equatable.dart';

class AuthUserEntity extends Equatable {
  const AuthUserEntity({
    required this.id,
    this.email,
    this.name,
    this.avatarUrl,
  });

  final String id;
  final String? email;
  final String? name;
  final String? avatarUrl;

  @override
  List<Object?> get props => [id, email, name, avatarUrl];
}