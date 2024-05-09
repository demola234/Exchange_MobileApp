extension CurrencyToInt on String {
  int get intValue {
    try {
      // Extract digits only
      final cleanValue = replaceAll(RegExp(r'[^0-9]'), '');

      // Parse as integer
      final intValue = int.parse(cleanValue);

      // Round the last two digits to the nearest number
      final roundedValue = (intValue / 100).round();

      return roundedValue;
    } catch (_) {
      // In case of any error, return 0
      return 0;
    }
  }
}
