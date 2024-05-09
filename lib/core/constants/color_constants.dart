import 'package:flutter/material.dart';

class ColorConstant {
  ColorConstant._();

  static const isMaterial3 = true;
  static const Color darkSystemColor = Color(0x7F0A090C);
  static const Color lightSystemColor = Color(0xFFFFFFFF);
  static const Color systemSystemColor = Color(0xFFFFFFFF);
  static const Color blueSystemColor = Color(0xFF6FB9DA);

  static const Color greyishColor = Color(0xFFCACACA);

  static const Color darkShades1 = Color(0xFF0B090D);
  static const Color darkShades2 = Color(0xFF3A3A3A);

  static const Color errorColor = Color(0x00CD4040);

  static const LinearGradient darkLinearGradient = LinearGradient(
    begin: Alignment(0.99, -0.11),
    end: Alignment(-0.99, 0.11),
    colors: [Color(0x4C0C0C0C), Color(0x19727272)],
  );
}
