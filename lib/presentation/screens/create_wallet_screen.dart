import 'package:exchange_mobile/core/components/button_component.dart';
import 'package:exchange_mobile/core/components/generated_seed_phrase_component.dart';
import 'package:exchange_mobile/core/constants/color_constants.dart';
import 'package:exchange_mobile/core/constants/fonts_constants.dart';
import 'package:exchange_mobile/core/constants/property_constants.dart';
import 'package:exchange_mobile/presentation/notifier/controller/wallet_controller.dart';
import 'package:exchange_mobile/presentation/widgets/create_wallet_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateWalletScreen extends ConsumerStatefulWidget {
  const CreateWalletScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CreateWalletScreenState();
}

class _CreateWalletScreenState extends ConsumerState<CreateWalletScreen> {
  final TextEditingController textEditingController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          const CreateWalletBackground(),
          Positioned(
            bottom: 0,
            child: Container(
                padding: PropertyConstant.loginPadding,
                width: context.screenWidth(),
                child: Column(children: [
                  30.verticalSpace,
                  Text(
                    'Let’s get you in',
                    textAlign: TextAlign.center,
                    style: FontConstant.appNormalFont.copyWith(
                      color: ColorConstant.lightSystemColor,
                      fontSize: 32.sp,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  10.verticalSpace,
                  Text(
                    'To get started, please create a new wallet or import one from seed phrase.',
                    textAlign: TextAlign.center,
                    style: FontConstant.captionTextStyleFont(
                      ColorConstant.greyishColor,
                    ),
                  ),
                  20.verticalSpace,
                  ButtonComponents(
                    text: "Create a new wallet",
                    textColor: Colors.black,
                    onPressed: () {
                      ref
                          .read(walletNotifierController.notifier)
                          .generatingWallet(context: context);
                    },
                    buttonColor: ColorConstant.blueSystemColor,
                  ),
                  10.verticalSpace,
                  ButtonComponents(
                    text: "Import wallet",
                    textColor: Colors.black,
                    onPressed: () {
                      context.importWallet(
                          onPressed: () async {
                            _pasteText();
                          },
                          textEditingController: textEditingController,
                          onGenPressed: () {
                            if (textEditingController.text.isNotEmpty) {
                              ref
                                  .read(walletNotifierController.notifier)
                                  .generateAccountFromMnemonics(
                                      context: context,
                                      mnemonics: textEditingController.text);
                            }
                          });
                    },
                    buttonColor: ColorConstant.lightSystemColor,
                  ),
                ])),
          ),
        ],
      ),
    );
  }

  void _pasteText() async {
    ClipboardData? data = await Clipboard.getData('text/plain');
    if (data != null && data.text != null) {
      setState(() {
        textEditingController.text = data.text ?? "";
      });
    }
  }
}
