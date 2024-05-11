import 'package:exchange_mobile/core/constants/color_constants.dart';
import 'package:exchange_mobile/core/constants/fonts_constants.dart';
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
              Text(
                'Swap Summary',
                textAlign: TextAlign.center,
                style: FontConstant.appNormalFont.copyWith(
                  color: ColorConstant.textGreyColor,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w700,
                ),
              ),
              24.verticalSpace,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Expected payment',
                  style: FontConstant.appNormalFont.copyWith(
                    color: ColorConstant.textGreyColor,
                    fontSize: 14.sp,
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
                  style: FontConstant.appNormalFont.copyWith(
                    color: ColorConstant.lightSystemColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ]),
              15.verticalSpace,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Price Impact',
                  style: FontConstant.appNormalFont.copyWith(
                    color: ColorConstant.textGreyColor,
                    fontSize: 14.sp,
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
                  style: FontConstant.appNormalFont.copyWith(
                    color: ColorConstant.blueSystemColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w700,
                    height: 0,
                  ),
                )
              ]),
              15.verticalSpace,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Min received after slippage (0%)',
                  style: FontConstant.appNormalFont.copyWith(
                    color: ColorConstant.textGreyColor,
                    fontSize: 14.sp,
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
                  style: FontConstant.appNormalFont.copyWith(
                    color: ColorConstant.lightSystemColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ]),
              15.verticalSpace,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Network Fee',
                  style: FontConstant.appNormalFont.copyWith(
                    color: ColorConstant.textGreyColor,
                    fontSize: 14.sp,
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
                  style: FontConstant.appNormalFont.copyWith(
                    color: ColorConstant.lightSystemColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ]),
              15.verticalSpace,
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text(
                  'Provider',
                  style: FontConstant.appNormalFont.copyWith(
                    color: ColorConstant.textGreyColor,
                    fontSize: 14.sp,
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
                  style: FontConstant.appNormalFont.copyWith(
                    color: ColorConstant.lightSystemColor,
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w400,
                  ),
                )
              ]),
            ]));
  }
}
