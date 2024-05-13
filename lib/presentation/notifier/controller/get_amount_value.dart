import 'package:flutter_riverpod/flutter_riverpod.dart';

class GetAmountValueController extends StateNotifier<String> {
  GetAmountValueController() : super('1');

  void updateValue(String value) {
    state = value;
  }
}

final getAmountValueControllerProvider =
    StateNotifierProvider<GetAmountValueController, String>((ref) {
  return GetAmountValueController();
});
