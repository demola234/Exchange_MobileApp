import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.authenticatingUser() = _Loading;
  const factory LoginState.authenticated() = _Authenticated;
  const factory LoginState.error({required String error}) = _Error;
}
