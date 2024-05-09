extension NumberParsing on int {
  String toOrdinalString() {
    if (this < 0) {
      throw Exception('Invalid number: Number must be a positive number');
    }
    if (this == 0) {
      return '0';
    }

    String stringValue = toString();

    switch (stringValue[stringValue.length - 1]) {
      case '1':
        return 'st';
      case '2':
        return 'nd';
      case '3':
        return 'rd';
      default:
        return 'th';
    }
  }
}
