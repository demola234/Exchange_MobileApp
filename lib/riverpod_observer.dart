// Flutter imports:
import 'package:flutter/rendering.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';

class AppObserver extends ProviderObserver {
  @override
  void didUpdateProvider(
    ProviderBase<Object?> provider,
    Object? previousValue,
    Object? newValue,
    ProviderContainer container,
  ) {
    debugPrint('''
{
  "provider": "${provider.name ?? provider.runtimeType}",
  "previousValue": "$previousValue",
  "newValue": "$newValue",
}''');
  }
}
