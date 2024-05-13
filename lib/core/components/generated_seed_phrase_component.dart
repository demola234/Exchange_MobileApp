import 'package:exchange_mobile/core/components/app_text_field.dart';
import 'package:exchange_mobile/core/components/button_component.dart';
import 'package:exchange_mobile/core/components/wrap_chips.dart';
import 'package:exchange_mobile/core/constants/color_constants.dart';
import 'package:exchange_mobile/core/constants/property_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';

extension AlertsDialog on BuildContext {
  _copyToClipboard(BuildContext context, String text) {
    Clipboard.setData(ClipboardData(text: text));
    Navigator.pop(context);

    Fluttertoast.showToast(
        msg: 'Copied to clipboard',
        toastLength: Toast.LENGTH_SHORT,
        gravity: ToastGravity.TOP,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.green,
        textColor: Colors.white,
        fontSize: 16.0);
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
  } // content: Column(children: [
}
