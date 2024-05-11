// Flutter imports:
import 'package:flutter/material.dart';

extension StringExtensions on String {
  Color? parseColor({double? opacity}) =>
      Color(int.parse(replaceAll('#', '0xFF'))).withOpacity(opacity ?? 1);
}

extension ListSentenceExtension on String {
  bool get isListSentence {
    RegExp listPattern = RegExp(r'^(\d+\.|\d+[-*•]).*');
    return listPattern.hasMatch(this);
  }

  String shortenHexString(int startIndex, int endIndex) {
    String prefix = substring(0, startIndex);
    String suffix = substring(endIndex);
    String middleDots = '........';
    return '$prefix$middleDots$suffix';
  }

  String formattedListSentence() {
    String formattedSentence = trim();
    return formattedSentence.replaceAllMapped(
        RegExp(r'(\d+\.|\d+[-*•])'), (match) => '\n${match.group(0)}');
  }

  // remove all whitespace
  String get removeAllWhitespace => replaceAll(RegExp(r'\s+'), '');
}



