import 'dart:math';

extension FileSizeExtension on String {
  static const List<String> sizeSuffixes = ['B', 'KB', 'MB', 'GB', 'TB'];

  String formatFileSize() {
    int bytes = int.tryParse(this) ?? 0;

    if (bytes <= 0) return '0B';

    const double kiloByte = 1024.0;
    int i = (bytes > 0) ? (log(bytes) / log(kiloByte)).floor() : 0;
    double num = bytes / pow(kiloByte, i);
    return '${num.toStringAsFixed(2)} ${sizeSuffixes[i]}';
  }
}
