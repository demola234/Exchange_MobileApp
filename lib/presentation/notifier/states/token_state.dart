import 'package:exchange_mobile/domain/entities/token_balance_entity.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'token_state.freezed.dart';

@freezed
abstract class TokenState with _$TokenState {
  const factory TokenState.initial() = Initial;
  const factory TokenState.loading() = Loading;
  const factory TokenState.success(TokenBalanceEntity token) = Success;
  const factory TokenState.error(String errorMessage) = Error;
}

@freezed
abstract class EthereumBalanceState with _$EthereumBalanceState {
  const factory EthereumBalanceState.initial() = EtheriumBalanceStateInitial;
  const factory EthereumBalanceState.loading() = EtheriumBalanceStateLoading;
  const factory EthereumBalanceState.success(String balance) =
      EthereumBalanceStateSuccess;
  const factory EthereumBalanceState.error(String errorMessage) =
      EtheriumBalanceStateError;
}
