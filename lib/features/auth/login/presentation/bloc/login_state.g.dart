// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state.dart';

// **************************************************************************
// CopyWithGenerator
// **************************************************************************

abstract class _$LoginStateCWProxy {
  LoginState status(LoginStatus status);

  LoginState errorResolver(String Function(BuildContext)? errorResolver);

  LoginState user(AuthUserEntity? user);

  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LoginState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LoginState(...).copyWith(id: 12, name: "My name")
  /// ```
  LoginState call({
    LoginStatus status,
    String Function(BuildContext)? errorResolver,
    AuthUserEntity? user,
  });
}

/// Callable proxy for `copyWith` functionality.
/// Use as `instanceOfLoginState.copyWith(...)` or call `instanceOfLoginState.copyWith.fieldName(value)` for a single field.
class _$LoginStateCWProxyImpl implements _$LoginStateCWProxy {
  const _$LoginStateCWProxyImpl(this._value);

  final LoginState _value;

  @override
  LoginState status(LoginStatus status) => call(status: status);

  @override
  LoginState errorResolver(String Function(BuildContext)? errorResolver) =>
      call(errorResolver: errorResolver);

  @override
  LoginState user(AuthUserEntity? user) => call(user: user);

  @override
  /// Creates a new instance with the provided field values.
  /// Passing `null` to a nullable field nullifies it, while `null` for a non-nullable field is ignored. To update a single field use `LoginState(...).copyWith.fieldName(value)`.
  ///
  /// Example:
  /// ```dart
  /// LoginState(...).copyWith(id: 12, name: "My name")
  /// ```
  LoginState call({
    Object? status = const $CopyWithPlaceholder(),
    Object? errorResolver = const $CopyWithPlaceholder(),
    Object? user = const $CopyWithPlaceholder(),
  }) {
    return LoginState(
      status: status == const $CopyWithPlaceholder() || status == null
          ? _value.status
          // ignore: cast_nullable_to_non_nullable
          : status as LoginStatus,
      errorResolver: errorResolver == const $CopyWithPlaceholder()
          ? _value.errorResolver
          // ignore: cast_nullable_to_non_nullable
          : errorResolver as String Function(BuildContext)?,
      user: user == const $CopyWithPlaceholder()
          ? _value.user
          // ignore: cast_nullable_to_non_nullable
          : user as AuthUserEntity?,
    );
  }
}

extension $LoginStateCopyWith on LoginState {
  /// Returns a callable class used to build a new instance with modified fields.
  /// Example: `instanceOfLoginState.copyWith(...)` or `instanceOfLoginState.copyWith.fieldName(...)`.
  // ignore: library_private_types_in_public_api
  _$LoginStateCWProxy get copyWith => _$LoginStateCWProxyImpl(this);
}
