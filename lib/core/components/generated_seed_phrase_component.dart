import 'package:exchange_mobile/core/components/app_text_field.dart';
import 'package:exchange_mobile/core/components/button_component.dart';
import 'package:exchange_mobile/core/constants/color_constants.dart';
import 'package:exchange_mobile/core/constants/property_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

extension AlertsDialog on BuildContext {
  _copyToClipboard(BuildContext context, String text) {
    Clipboard.setData(ClipboardData(text: text));
    Navigator.pop(context);
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(
        content: Text('Copied to clipboard'),
      ),
    );
  }

  List<String> splitString(String input, String delimiter) {
    return input.split(delimiter);
  }

  generateSeedPhrase({
    required Function()? onTap,
    required String mnemonics,
    required String address,
  }) {
    return showDialog(
      context: this,
      builder: (context) {
        final mnemonic = splitString(mnemonics, " ");
        return Dialog(
            elevation: 0,
            insetAnimationCurve: Curves.easeInOut,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            // insetPadding: const EdgeInsets.only(bottom: 200),
            backgroundColor: Colors.transparent,
            child: Padding(
                padding: const EdgeInsets.only(top: 36),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Container(
                      padding: EdgeInsets.only(
                        top: 30.sp,
                        bottom: 10.sp,
                        left: 16.sp,
                        right: 16.sp,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.darkShades1,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            "Wallet Generated",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          10.verticalSpace,
                          WrapChips(mnemonics: mnemonic),
                          18.verticalSpace,
                          Container(
                              padding: const EdgeInsets.all(16),
                              decoration: ShapeDecoration(
                                color: const Color(0x3D3A3A3A),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(32),
                                ),
                              ),
                              child: Column(
                                children: [
                                  const Text(
                                    'Address:',
                                    style: TextStyle(
                                      color: Color(0xFFCACACA),
                                      fontSize: 14,
                                      fontFamily: 'Nunito Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                  10.verticalSpace,
                                  Text(
                                    address,
                                    style: const TextStyle(
                                      color: Colors.white,
                                      fontSize: 14,
                                      fontFamily: 'Nunito Sans',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  )
                                ],
                              )),
                          12.verticalSpace,
                          const Text(
                            'NOTE🔥🔥: Please ensure to copy your seed phrase and store in a safe storage to avoid lose of account',
                            style: TextStyle(
                              color: Color(0xFFCACACA),
                              fontSize: 14,
                              fontFamily: 'Nunito Sans',
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                          15.verticalSpace,
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: ButtonComponents(
                              text: "Copy to clipboard",
                              textColor: ColorConstant.blueSystemColor,
                              onPressed: () {
                                _copyToClipboard(context, mnemonics);
                              },
                              buttonColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                )));
      },
    );
  }

  importWallet({
    required Function() onPressed,
    required Function() onGenPressed,
    required TextEditingController textEditingController,
  }) {
    return showDialog(
      context: this,
      builder: (context) {
        return Dialog(
            elevation: 0,
            insetAnimationCurve: Curves.easeInOut,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            // insetPadding: const EdgeInsets.only(bottom: 200),
            backgroundColor: Colors.transparent,
            child: Padding(
                padding: const EdgeInsets.only(top: 36),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  Column(mainAxisSize: MainAxisSize.min, children: [
                    Container(
                      padding: EdgeInsets.only(
                        top: 30.sp,
                        bottom: 10.sp,
                        left: 16.sp,
                        right: 16.sp,
                      ),
                      decoration: BoxDecoration(
                        color: ColorConstant.darkShades1,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          const Text(
                            "Import Seed Phrase",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          30.verticalSpace,
                          AppTextField(
                            hintText: "Seed Phrase",
                            controller: textEditingController,
                            maxLines: 5,
                            suffixIcon: GestureDetector(
                              onTap: onPressed,
                              child: Padding(
                                padding: const EdgeInsets.all(20),
                                child: Container(
                                  height: 30.sp,
                                  decoration: BoxDecoration(
                                    color: ColorConstant.blueSystemColor,
                                    borderRadius:
                                        PropertyConstant.loginBorderRadius,
                                  ),
                                  padding: const EdgeInsets.all(5),
                                  child: const Text("Paste"),
                                ),
                              ),
                            ),
                          ),
                          18.verticalSpace,
                          Padding(
                            padding: const EdgeInsets.all(10),
                            child: ButtonComponents(
                              text: "Generate Wallet",
                              textColor: ColorConstant.blueSystemColor,
                              onPressed: onGenPressed,
                              buttonColor: Colors.white,
                            ),
                          ),
                        ],
                      ),
                      // content: Column(children: [

                      // ]),
                      // actions: [
                      //   TextButton(
                      //     child: const Text('Close'),
                      //     onPressed: () {
                      //       Navigator.of(context).pop();
                      //     },
                      //   ),
                      // ],
                    )
                  ])
                ])));
      },
    );
  }

//   // Logout Dialog
//   logoutDialog({
//     required Function()? onTap,
//   }) {
//     return showDialog(
//         context: this,
//         builder: (context) {
//           return Dialog(
//               elevation: 0,
//               insetAnimationCurve: Curves.easeInOut,
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//               // insetPadding: const EdgeInsets.only(bottom: 200),
//               backgroundColor: Colors.transparent,
//               child: Padding(
//                   padding: const EdgeInsets.only(top: 36),
//                   child: Container(
//                       padding: EdgeInsets.only(
//                         top: 30.sp,
//                         bottom: 10.sp,
//                         left: 16.sp,
//                         right: 16.sp,
//                       ),
//                       width: MediaQuery.of(context).size.width * 0.9,
//                       constraints: BoxConstraints.loose(
//                         Size(
//                           MediaQuery.of(context).size.width * 0.9,
//                           MediaQuery.of(context).size.height * 0.35,
//                         ),
//                       ),
//                       // height: context.screenHeight() * 0.25,
//                       decoration: BoxDecoration(
//                         color: ColorConstant.whiteColor,
//                         borderRadius: BorderRadius.circular(20),
//                       ),
//                       child: Column(
//                         children: [
//                           SvgPicture.asset(IconConstants.warning),
//                           const SizedBox(height: 30),
//                           const Text(
//                             'Log out of Alumni app?',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               color: Color(0xFF0A1017),
//                               fontSize: 18,
//                               fontFamily: 'Cygre-SemiBold',
//                               fontWeight: FontWeight.w600,
//                             ),
//                           ),
//                           const SizedBox(height: 30),
//                           const Text(
//                             'You will be logged out. Log back into your account next time.',
//                             textAlign: TextAlign.center,
//                             style: TextStyle(
//                               color: Color(0xFFA3A9B1),
//                               fontSize: 12,
//                               fontFamily: 'Cygre',
//                               fontWeight: FontWeight.w400,
//                             ),
//                           ),
//                           const SizedBox(height: 30),
//                           Padding(
//                             padding: PropertyConstant.marginH20,
//                             child: Row(
//                               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                               children: [
//                                 FilledButtonComponent(
//                                   text: 'Yes',
//                                   padding: PropertyConstant.paddingAll10,
//                                   borderColor: ColorConstant.transparentColor,
//                                   color: ColorConstant.errorThemeColor,
//                                   onTap: onTap,
//                                   active: true,
//                                   fixedSize: Size(92.w, 31.h),
//                                   textSize: 12.sp,
//                                 ),
//                                 FilledButtonComponent(
//                                   text: 'No',
//                                   borderColor: ColorConstant.greyColor,
//                                   textColor: ColorConstant.blackColor,
//                                   color: ColorConstant.whiteColor,
//                                   padding: PropertyConstant.paddingAll10,
//                                   onTap: () {
//                                     // Connect logic
//                                     context.pop();
//                                   },
//                                   active: true,
//                                   fixedSize: Size(92.w, 31.h),
//                                   textSize: 12.sp,
//                                 ),
//                               ],
//                             ),
//                           )
//                         ],
//                       ))));
//         });
//   }
//   // content: Column(children: [
}

class WrapChips extends StatefulWidget {
  final List<String> mnemonics;
  const WrapChips({required this.mnemonics, super.key});

  @override
  _WrapChipsState createState() => _WrapChipsState();
}

class _WrapChipsState extends State<WrapChips>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _animation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: widget.mnemonics.map((chip) {
                  return ScaleTransition(
                    scale: _animation,
                    child: RotationTransition(
                      turns: _animation,
                      child: GestureDetector(
                        child: Chip(
                          label: Text(chip),
                          backgroundColor: ColorConstant.darkShades1,
                          labelStyle: const TextStyle(
                            color: ColorConstant.lightSystemColor,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              )
            ],
          ),
        );
      },
    );
  }
}
