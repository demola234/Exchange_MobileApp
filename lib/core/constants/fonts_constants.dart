// Flutter imports:
import 'package:exchange_mobile/core/constants/property_constants.dart';
import 'package:flutter/material.dart';
// Package imports:
import 'package:google_fonts/google_fonts.dart';

// Project imports:

// import 'package:google_fonts/google_fonts.dart';

class FontConstant {
  static final appNormalFont = GoogleFonts.poppins(fontStyle: FontStyle.normal);
  static final appItalicFont = GoogleFonts.poppins(fontStyle: FontStyle.italic);

  //NORMAL WEIGHT FONT
  static const appNormalWeight700Font =
      TextStyle(fontStyle: FontStyle.normal, fontWeight: FontWeight.w700);

  static headLine6TextStyleFont(Color color) => appNormalFont.copyWith(
        fontSize: PropertyConstant.headLine6FontSize,
        fontWeight: FontWeight.w700,
        color: color,
      );

  static headLine5TextStyleFont(Color color) => appNormalFont.copyWith(
        fontSize: PropertyConstant.headLine5FontSize,
        fontWeight: FontWeight.w400,
        color: color,
      );

  static headLine4TextStyleFont(Color color) => appNormalFont.copyWith(
        fontSize: PropertyConstant.headLine4FontSize,
        fontWeight: FontWeight.w600,
        color: color,
      );

  static headLine3TextStyleFont(Color color) => appNormalFont.copyWith(
        fontSize: PropertyConstant.headLine3FontSize,
        fontWeight: FontWeight.w500,
        color: color,
      );

  static headLine2TextStyleFont(Color color) => appNormalFont.copyWith(
        fontSize: PropertyConstant.headLine2FontSize,
        fontWeight: FontWeight.w500,
        color: color,
      );

  static headLine1TextStyleFont(Color color) => appNormalFont.copyWith(
        fontSize: PropertyConstant.headLine1FontSize,
        fontWeight: FontWeight.w500,
        color: color,
      );

  static captionTextStyleFont(Color color) => appNormalFont.copyWith(
        fontSize: PropertyConstant.headLine4FontSize,
        fontWeight: FontWeight.w400,
        color: color,
      );

  static titleMediumTextStyleFont(Color color) => appNormalFont.copyWith(
        fontSize: PropertyConstant.headLine2FontSize,
        fontWeight: FontWeight.w500,
        color: color,
      );
}
