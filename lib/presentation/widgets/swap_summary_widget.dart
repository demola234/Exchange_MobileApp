import 'package:exchange_mobile/core/constants/color_constants.dart';
import 'package:exchange_mobile/core/constants/property_constants.dart';
import 'package:exchange_mobile/presentation/notifier/controller/swap_quote_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwapSummary extends ConsumerStatefulWidget {
  const SwapSummary({
    super.key,
  });

  @override
  ConsumerState<SwapSummary> createState() => _SwapSummaryState();
}

class _SwapSummaryState extends ConsumerState<SwapSummary> {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: context.screenWidth(),
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
                'Swap Summary',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFFA2A2A2),
                  fontSize: 16,
                  fontFamily: 'Nunito Sans',
                  fontWeight: FontWeight.w700,
                ),
              ),
              24.verticalSpace,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text(
                  'Expected payment',
                  style: TextStyle(
                    color: Color(0xFFCACACA),
                    fontSize: 14,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  ref.watch(swapQuoteControllerProvider).maybeWhen(
                        orElse: () {
                          return '0.00';
                        },
                        success: (data) => data.price.toString(),
                      ),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ]),
              15.verticalSpace,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text(
                  'Price Impact',
                  style: TextStyle(
                    color: Color(0xFFCACACA),
                    fontSize: 14,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  ref.watch(swapQuoteControllerProvider).maybeWhen(
                        orElse: () {
                          return '0%';
                        },
                        success: (data) =>
                            "${data.estimatedPriceImpact.toString()}%",
                      ),
                  style: const TextStyle(
                    color: Color(0xFF4BCE97),
                    fontSize: 14,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                )
              ]),
              15.verticalSpace,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text(
                  'Min received after slippage (0%)',
                  style: TextStyle(
                    color: Color(0xFFCACACA),
                    fontSize: 14,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  ref.watch(swapQuoteControllerProvider).maybeWhen(
                        orElse: () {
                          return '0.0';
                        },
                        success: (data) => data.gas.toString(),
                      ),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ]),
              15.verticalSpace,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text(
                  'Network Fee',
                  style: TextStyle(
                    color: Color(0xFFCACACA),
                    fontSize: 14,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  ref.watch(swapQuoteControllerProvider).maybeWhen(
                        orElse: () {
                          return '0.0 ';
                        },
                        success: (data) =>
                            data.fees!.zeroExFee!.feeAmount.toString(),
                      ),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ]),
              15.verticalSpace,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                const Text(
                  'Provider',
                  style: TextStyle(
                    color: Color(0xFFCACACA),
                    fontSize: 14,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                  ref.watch(swapQuoteControllerProvider).maybeWhen(
                        orElse: () {
                          return '--';
                        },
                        success: (data) => '0x',
                      ),
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontFamily: 'Nunito Sans',
                    fontWeight: FontWeight.w400,
                  ),
                )
              ]),
            ]));
  }
}
