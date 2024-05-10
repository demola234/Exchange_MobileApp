import 'package:exchange_mobile/core/constants/color_constants.dart';
import 'package:exchange_mobile/core/constants/property_constants.dart';
import 'package:exchange_mobile/presentation/widgets/buy_token_swap_widget.dart';
import 'package:exchange_mobile/presentation/widgets/current_user_widget.dart';
import 'package:exchange_mobile/presentation/widgets/spinner_widgets.dart';
import 'package:exchange_mobile/presentation/widgets/swap_background.dart';
import 'package:exchange_mobile/presentation/widgets/swap_summary_widget.dart';
import 'package:exchange_mobile/presentation/widgets/swap_token_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwapScreen extends StatefulWidget {
  const SwapScreen({super.key});

  @override
  State<SwapScreen> createState() => _SwapScreenState();
}

class _SwapScreenState extends State<SwapScreen> {
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
                const CurrentUsersWidget(),
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
                              const Text(
                                'Swap',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFF5F5F5),
                                  fontSize: 24,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              30.verticalSpace,
                              const SwapTokenSwapWidget(),
                              20.verticalSpace,
                              Builder(builder: (context) {
                                return Consumer(
                                  builder: (_, WidgetRef ref, __) {
                                    return const Text(
                                      'Bal: 2,555 USDT',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    );
                                  },
                                );
                              }),
                              5.verticalSpace,
                              const SpinnerBorder(),
                              5.verticalSpace,
                              const BuyTokenSwapWidget(),
                              20.verticalSpace,
                              const Text(
                                'Bal: 2,555 USDT',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )),
                      20.verticalSpace,
                      const SwapSummary(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}
