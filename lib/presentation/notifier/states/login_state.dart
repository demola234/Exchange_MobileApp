import 'package:exchange_mobile/domain/entities/user_google_response.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_state.freezed.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;
  const factory LoginState.authenticatingUser() = _Loading;
  const factory LoginState.authenticated({required UserGoogleResponse userDetails}) = _Authenticated;
  const factory LoginState.error({required String error}) = _Error;
}
