/// A custom button widget that can be used to create buttons with custom styles and functionality.
///
/// The `ButtonComponents` class extends the `StatelessWidget` class and provides a customizable button
/// with text, color, and icon options. It uses the `ElevatedButton` widget from the Flutter framework
/// to render the button.
///
/// Example usage:
///
/// ```dart
/// ButtonComponents(
///   text: 'Submit',
///   buttonColor: Colors.blue,
///   textColor: Colors.white,
///   onPressed: () {
///     // Handle button press
///   },
///   icon: 'assets/icons/submit_icon.svg',
///   textSize: 18,
///   padding: EdgeInsets.all(10),
/// )
/// ```

import 'package:exchange_mobile/core/constants/color_constants.dart';
import 'package:exchange_mobile/core/constants/fonts_constants.dart';
import 'package:exchange_mobile/core/constants/property_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ButtonComponents extends StatelessWidget {
  final String text;
  final Color buttonColor;
  final Color textColor;
  final VoidCallback onPressed;
  final Color? color;
  final bool? active;
  final String? icon;
  final String? iconRtr;
  final Size? fixedSize;
  final double? textSize;
  final EdgeInsetsGeometry? padding;

  const ButtonComponents({
    super.key,
    required this.text,
    required this.buttonColor,
    required this.textColor,
    required this.onPressed,
    this.color,
    this.active = true,
    this.icon,
    this.iconRtr,
    this.textSize = 16,
    this.fixedSize,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: active! ? buttonColor : ColorConstant.greyishColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.sp),
        ),
        elevation: 0,
        padding: padding ??
            EdgeInsets.symmetric(
              vertical: 15.sp,
            ),
        animationDuration: const Duration(milliseconds: 500),
        fixedSize: fixedSize ?? Size(context.screenWidth() - 20, 56.sp),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          if (icon != null)
            SvgPicture.asset(
              icon!,
              height: 16.sp,
              width: 16.sp,
            )
          else
            const SizedBox(),
          10.horizontalSpace,
          Text(
            text,
            style: FontConstant.appNormalFont.copyWith(
              color: textColor,
              fontSize: textSize ?? 16.sp,
              fontWeight: FontWeight.w800,
            ),
          ),
          7.horizontalSpace,
        ],
      ),
    );
  }
}
