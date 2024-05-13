import 'package:auto_size_text/auto_size_text.dart';
import 'package:exchange_mobile/core/constants/color_constants.dart';
import 'package:exchange_mobile/core/constants/fonts_constants.dart';
import 'package:exchange_mobile/core/constants/property_constants.dart';
import 'package:exchange_mobile/presentation/notifier/controller/get_amount_value.dart';
import 'package:exchange_mobile/presentation/notifier/controller/swap_quote_controller.dart';
import 'package:exchange_mobile/presentation/notifier/controller/token_controller.dart';
import 'package:exchange_mobile/presentation/notifier/controller/token_swap_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BuyTokenSwapWidget extends ConsumerStatefulWidget {
  const BuyTokenSwapWidget({
    super.key,
  });

  @override
  ConsumerState<BuyTokenSwapWidget> createState() => _BuyTokenSwapWidget();
}

class _BuyTokenSwapWidget extends ConsumerState<BuyTokenSwapWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    _controller = AnimationController(
        vsync: this,
        duration: const Duration(
          microseconds: 2000,
        ));
    // animate to vibrate
    _animation = Tween<double>(begin: 1.0, end: 1.1).animate(
        CurvedAnimation(parent: _controller, curve: Curves.elasticInOut));
    _animation.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _controller.reverse();
      }
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
                padding: PropertyConstant.innerUserPadding,
                decoration: ShapeDecoration(
                  color: ColorConstant.darkShades2.withOpacity(0.24),
                  shape: RoundedRectangleBorder(
                    borderRadius: PropertyConstant.containerBorderRadius,
                  ),
                ),
                child: Consumer(
                  builder: (_, WidgetRef ref, __) {
                    return Row(children: [
                      SvgPicture.asset(
                          ref.watch(swapTokensProvider).when(
                                loading: (data) {
                                  return data.last.tokenImage!;
                                },
                                error: (data) => data.last.tokenImage!,
                                success: (data) => data.last.tokenImage!,
                              ),
                          width: 30.sp,
                          height: 30.sp),
                      8.horizontalSpace,
                      Text(
                        ref.watch(swapTokensProvider).when(
                              loading: (data) {
                                return data.last.token!;
                              },
                              error: (data) => data.last.token!,
                              success: (data) => data.last.token!,
                            ),
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      15.horizontalSpace,
                      SvgPicture.asset('assets/icons/arrow_down.svg'),
                    ]);
                  },
                )),
            SizedBox(
              height: 60.sp,
              width: 90.sp,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: SizedBox(
                      width: 90.sp,
                      child: ScaleTransition(
                        scale: _animation,
                        child: AutoSizeText(
                          maxFontSize: 50,
                          style: FontConstant.appNormalFont.copyWith(
                            fontSize: 30.sp,
                            fontWeight: FontWeight.bold,
                            color: ColorConstant.lightSystemColor,
                          ),

                          // ref
                          //         .watch(swapQuoteControllerProvider.notifier)
                          //         .buyExchangeController
                          //         .text
                          //         .isEmpty
                          //     ? '0.00'
                          //     : ref
                          //         .read(swapQuoteControllerProvider.notifier)
                          //         .buyExchangeController
                          //         .text,
                          ref.watch(swapQuoteControllerProvider).maybeWhen(
                                orElse: () {
                                  return '0.0 ';
                                },
                                success: (data) =>
                                    ((double.parse(data.sellTokenToEthRate) *
                                            (double.parse(
                                              (ref.watch(
                                                  getAmountValueControllerProvider)),
                                            )))
                                        .toString()),
                              ),
                          // "0.0",
                          softWrap: true,
                          // stepGranularity: 0.4,
                          overflow: TextOverflow.fade,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        20.verticalSpace,
        Text(
          ref.watch(tokenControllerProvider).maybeWhen(
                orElse: () => "Balance: 0.0 ",
                success: (balance) {
                  return ref.watch(swapTokensProvider).maybeWhen(
                      orElse: () {
                        return "Balance: 0.0  ";
                      },
                      loading: (data) {
                        return "Balance: 0.0  ${data.last.token}";
                      },
                      error: (data) => "Balance: 0.0  ${data.last.token}",
                      success: (data) {
                        return "Balance: ${double.parse(balance.result!.last.balance)}  ${data.last.token}";
                      });
                },
              ),
          style: FontConstant.appNormalFont.copyWith(
            color: ColorConstant.lightSystemColor,
            fontSize: 12.sp,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
