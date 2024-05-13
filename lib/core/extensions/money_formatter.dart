extension CurrencyFormatter on String {
  String formatCurrency({String symbol = '\$'}) {
    // Parse the string as double
    double amount = double.tryParse(this) ?? 0.0;

    // Format the amount as currency
    String formattedAmount = amount.toStringAsFixed(2);

    // Insert commas for thousands separator
    final parts = formattedAmount.split('.');
    parts[0] = parts[0].replaceAllMapped(
      RegExp(r'(\d{1,3})(?=(\d{3})+(?!\d))'),
      (Match match) => '${match[1]},',
    );

    // Add currency symbol
    return '$symbol${parts.join('.')}';
  }
}
