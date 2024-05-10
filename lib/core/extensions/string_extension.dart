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

  // String shortenHexString(int startIndex, int endIndex) {
  //   List<String> characters = split('');
  //   for (int i = startIndex; i < endIndex; i++) {
  //     characters[i] = '.';
  //   }
  //   return '${characters.join('')}...';
  // }

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

extension LinkAndHashtagDetector on String {
  String linkAndHashtagDetector() {
    String formattedSentence = trim();
    formattedSentence = formattedSentence.replaceAllMapped(
        RegExp(r'(\d+\.|\d+[-*•])'), (match) => '\n${match.group(0)}');
    formattedSentence = formattedSentence.replaceAllMapped(
        RegExp(r'(#\w+)'), (match) => '\n${match.group(0)}');
    formattedSentence = formattedSentence.replaceAllMapped(
        RegExp(r'(https?:\/\/\S+)'), (match) => '\n${match.group(0)}');
    return formattedSentence;
  }
}

extension ContainsLinkOrHashtags on String {
  bool containsLinkOrHashtags() {
    // return true if string contains link or hashtags
    return RegExp(r'(https?:\/\/\S+)|(#\w+)').hasMatch(this);
  }
}

// String urlRegExp =

// url regex that accept https, http, www
String urlRegExp =
    r'((https?://)?(www\.)?[a-zA-Z0-9@:%._\+~#=]{2,256}\.[a-z]{2,6}\b([-a-zA-Z0-9@:%_\+.~#?&//=]*))';

String hashtagRegExp = r'(#+[a-zA-Z0-9(_)]{1,})';

String userTagRegExp = r'(?<![\w@])@([\w@]+(?:[.!][\w@]+)*)';
String phoneRegExp =
    r'\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*';
String emailRegExp =
    r"([a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+)";

// nornal text

/// construct regexp. pattern from provided link types
RegExp constructRegExpFromLinkType(List<LinkType> types) {
  // default case where we always want to match url strings
  final len = types.length;
  if (len == 1 && types.first == LinkType.url) {
    return RegExp(urlRegExp);
  }
  final buffer = StringBuffer();
  for (var i = 0; i < len; i++) {
    final type = types[i];
    final isLast = i == len - 1;
    switch (type) {
      case LinkType.url:
        isLast ? buffer.write('($urlRegExp)') : buffer.write('($urlRegExp)|');
        break;
      case LinkType.hashTag:
        isLast
            ? buffer.write('($hashtagRegExp)')
            : buffer.write('($hashtagRegExp)|');
        break;
      case LinkType.userTag:
        isLast
            ? buffer.write('($userTagRegExp)')
            : buffer.write('($userTagRegExp)|');
        break;
      case LinkType.email:
        isLast
            ? buffer.write('($emailRegExp)')
            : buffer.write('($emailRegExp)|');
        break;
      case LinkType.phone:
        isLast
            ? buffer.write('($phoneRegExp)')
            : buffer.write('($phoneRegExp)|');
        break;
      default:
    }
  }
  return RegExp(buffer.toString());
}

LinkType getMatchedType(String match) {
  late LinkType type;
  if (RegExp(emailRegExp).hasMatch(match)) {
    type = LinkType.email;
  } else if (RegExp(phoneRegExp).hasMatch(match)) {
    type = LinkType.phone;
  } else if (RegExp(userTagRegExp).hasMatch(match)) {
    type = LinkType.userTag;
  } else if (RegExp(urlRegExp).hasMatch(match)) {
    type = LinkType.url;
  } else if (RegExp(hashtagRegExp).hasMatch(match)) {
    type = LinkType.hashTag;
  } else {
    type = LinkType.none;
  }
  return type;
}

enum LinkType { url, email, hashTag, userTag, phone, none }

class Link {
  late final String? _value;
  late final LinkType? _type;
  String? get value => _value;
  LinkType? get type => _type;

  /// construct link from matched regExp
  Link.fromMatch(RegExpMatch match) {
    String matchedText = match.input.substring(match.start, match.end);
    _type = getMatchedType(matchedText);
    _value = matchedText;
  }
}
