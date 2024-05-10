import 'package:exchange_mobile/core/injector/injector.dart';
import 'package:exchange_mobile/core/security/security.dart';
import 'package:exchange_mobile/domain/repositories/repositories.dart';
import 'package:exchange_mobile/presentation/notifier/states/token_state.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

Repository repository = sl<Repository>();
final tokenControllerProvider =
    StateNotifierProvider<TokenController, TokenState>((ref) {
  return TokenController(repository);
});

class TokenController extends StateNotifier<TokenState> {
  TokenController(
    this._repository,
  ) : super(const TokenState.initial());

  final Repository _repository;

  Future<void> getTokenBalance() async {
    state = const TokenState.loading();

    final ethresult = await sl<SecureStorage>().getWalletDetails();

    final result = await _repository
        .getTokenBalance(userAddress: ethresult!.publicKey!, tokenAddress: {
      "token_addresses": "0xdAC17F958D2ee523a2206206994597C13D831ec7",
    });
    result.fold((failure) {
      state = TokenState.error(failure.toString());
    }, (data) {
      state = TokenState.success(data);
    });
  }
}

final etheriumControllerProvider =
    StateNotifierProvider<EtheriumNotifierController, EtheriumBalanceState>(
        (ref) {
  return EtheriumNotifierController(repository);
});

class EtheriumNotifierController extends StateNotifier<EtheriumBalanceState> {
  EtheriumNotifierController(
    this._repository,
  ) : super(const EtheriumBalanceState.initial());

  final Repository _repository;

  Future<void> getTokenBalance() async {
    state = const EtheriumBalanceState.loading();

    final ethresult = await sl<SecureStorage>().getWalletDetails();

    final result =
        await _repository.getEthBalance(userAddress: ethresult!.privateKey!);
    result.fold((failure) {
      state = EtheriumBalanceState.error(failure.toString());
    }, (data) {
      state = EtheriumBalanceState.success(data);
    });
  }
}
