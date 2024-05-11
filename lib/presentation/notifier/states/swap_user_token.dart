
import 'package:freezed_annotation/freezed_annotation.dart';

part 'swap_user_token.freezed.dart';

@freezed
abstract class SwapUserToken with _$SwapUserToken {
  const factory SwapUserToken.initial() = Initial;
  const factory SwapUserToken.loading() = Loading;
  const factory SwapUserToken.success(bool swap) = Success;
  const factory SwapUserToken.error(String errorMessage) = Error;
}