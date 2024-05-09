// Flutter imports:
import 'package:flutter/material.dart';

class PropertyConstant {
  static final ShapeBorder cardShapeBorder =
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0));
  static final BorderRadius loginBorderRadius = BorderRadius.circular(32.0);
  static final BorderRadius containerBorderRadius = BorderRadius.circular(16.0);

  // PADDING
  static const EdgeInsetsGeometry loginPadding =
      EdgeInsets.symmetric(horizontal: 20, vertical: 40);
  static const EdgeInsetsGeometry containerPadding =
      EdgeInsets.symmetric(horizontal: 14.0);

  static const EdgeInsetsGeometry innerUserPadding = EdgeInsets.all(16.0);
  static const EdgeInsetsGeometry innerSwapPadding = EdgeInsets.all(22.0);

  //FONT SIZE
  static const double headLine6FontSize = 22.0;
  static const double headLine5FontSize = 14.0;
  static const double headLine4FontSize = 16.0;
  static const double headLine3FontSize = 14.0;
  static const double headLine2FontSize = 15.0;
  static const double headLine1FontSize = 14.0;
}

// Screen Size Extension

extension CustomContext on BuildContext {
  /// [screenHeight] is used to get the height of the screen
  double screenHeight([double percent = 1]) =>
      MediaQuery.of(this).size.height * percent;

  /// [screenWidth] is used to get the width of the screen
  double screenWidth([double percent = 1]) =>
      MediaQuery.of(this).size.width * percent;
}
