import 'package:exchange_mobile/core/components/button_component.dart';
import 'package:exchange_mobile/core/constants/color_constants.dart';
import 'package:exchange_mobile/core/constants/fonts_constants.dart';
import 'package:exchange_mobile/core/constants/property_constants.dart';
import 'package:exchange_mobile/presentation/notifier/controller/swap_user_token_controller.dart';
import 'package:exchange_mobile/presentation/notifier/controller/token_controller.dart';
import 'package:exchange_mobile/presentation/widgets/buy_token_swap_widget.dart';
import 'package:exchange_mobile/presentation/widgets/current_user_widget.dart';
import 'package:exchange_mobile/presentation/widgets/spinner_widgets.dart';
import 'package:exchange_mobile/presentation/widgets/swap_background.dart';
import 'package:exchange_mobile/presentation/widgets/swap_summary_widget.dart';
import 'package:exchange_mobile/presentation/widgets/swap_token_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwapScreen extends ConsumerStatefulWidget {
  const SwapScreen({super.key});

  @override
  ConsumerState<SwapScreen> createState() => _SwapScreenState();
}

class _SwapScreenState extends ConsumerState<SwapScreen> {
  @override
  void didChangeDependencies() {
    ref.read(tokenControllerProvider.notifier).getTokenBalance();
    super.didChangeDependencies();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(children: [
          const Positioned(child: SwapBackgroundWidget()),
          Padding(
            padding: PropertyConstant.containerPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                50.verticalSpace,
                GestureDetector(
                  onTap: () {},
                  child: const CurrentUsersWidget(),
                ),
                15.verticalSpace,
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    children: [
                      10.verticalSpace,
                      Container(
                          padding: PropertyConstant.innerSwapPadding,
                          decoration: ShapeDecoration(
                            color: ColorConstant.darkShades1.withOpacity(0.5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(32.sp),
                            ),
                          ),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Swap',
                                textAlign: TextAlign.center,
                                style: FontConstant.appNormalFont.copyWith(
                                  color: ColorConstant.lightSystemColor,
                                  fontSize: 24.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              30.verticalSpace,
                              const SwapTokenSwapWidget(),
                              const SpinnerBorder(),
                              5.verticalSpace,
                              const BuyTokenSwapWidget(),
                            ],
                          )),
                      20.verticalSpace,
                      const SwapSummary(),
                      20.verticalSpace,
                      ButtonComponents(
                        text: "Swipe to Complete",
                        textColor: Colors.black,
                        onPressed: () {
                          ref
                              .read(swapUserTokenControllerProvider.notifier)
                              .swapTokens(
                                context: context,
                              );
                        },
                        buttonColor: Colors.white,
                      ),
                      30.verticalSpace,
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
