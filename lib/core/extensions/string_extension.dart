// Flutter imports:
import 'package:flutter/material.dart';

extension StringExtensions on String {
  Color? parseColor({double? opacity}) =>
      Color(int.parse(replaceAll('#', '0xFF'))).withOpacity(opacity ?? 1);

  String shortenHexString(int startIndex, int endIndex) {
    String prefix = substring(0, startIndex);
    String suffix = substring(endIndex);
    String middleDots = '........';
    return '$prefix$middleDots$suffix';
  }

  // remove all whitespace
  String get removeAllWhitespace => replaceAll(RegExp(r'\s+'), '');
}
