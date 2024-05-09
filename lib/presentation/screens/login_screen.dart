import 'dart:ui';

import 'package:exchange_mobile/core/components/button_component.dart';
import 'package:exchange_mobile/core/constants/color_constants.dart';
import 'package:exchange_mobile/core/constants/fonts_constants.dart';
import 'package:exchange_mobile/core/constants/property_constants.dart';
import 'package:exchange_mobile/presentation/notifier/controller/login_controller.dart';
import 'package:exchange_mobile/presentation/widgets/login_background_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class LoginScreen extends ConsumerStatefulWidget {
  const LoginScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _LoginScreenState();
}

class _LoginScreenState extends ConsumerState<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          const LoginBackgroundWidget(),
          Positioned(
            bottom: 0,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
                child: Container(
                    padding: PropertyConstant.loginPadding,
                    width: context.screenWidth(),
                    decoration: BoxDecoration(
                      borderRadius: PropertyConstant.loginBorderRadius,
                      color: ColorConstant.darkSystemColor.withOpacity(0.5),
                    ),
                    child: Column(children: [
                      30.verticalSpace,
                      SvgPicture.asset('assets/icons/solana.svg'),
                      30.verticalSpace,
                      Text(
                        'Log in',
                        textAlign: TextAlign.center,
                        style: FontConstant.appNormalFont.copyWith(
                          color: ColorConstant.lightSystemColor,
                          fontSize: 32.sp,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      10.verticalSpace,
                      Text(
                        'Welcome back',
                        textAlign: TextAlign.center,
                        style: FontConstant.captionTextStyleFont(
                          ColorConstant.greyishColor,
                        ),
                      ),
                      20.verticalSpace,
                      ButtonComponents(
                        text: "Login with google",
                        textColor: Colors.black,
                        onPressed: () {
                          print("click");
                          ref
                              .read(loginUserNotifierController.notifier)
                              .googleAuth(context: context);
                        },
                        icon: "assets/icons/google.svg",
                        buttonColor: Colors.white,
                      ),
                      30.verticalSpace,
                    ])),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
