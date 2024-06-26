import 'package:exchange_mobile/core/constants/color_constants.dart';
import 'package:exchange_mobile/core/constants/fonts_constants.dart';
import 'package:exchange_mobile/core/constants/property_constants.dart';
import 'package:exchange_mobile/presentation/notifier/controller/get_amount_value.dart';
import 'package:exchange_mobile/presentation/notifier/controller/swap_quote_controller.dart';
import 'package:exchange_mobile/presentation/notifier/controller/token_controller.dart';
import 'package:exchange_mobile/presentation/notifier/controller/token_swap_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SwapTokenSwapWidget extends ConsumerStatefulWidget {
  const SwapTokenSwapWidget({
    super.key,
  });

  @override
  ConsumerState<SwapTokenSwapWidget> createState() => _TokenSwapWidgetState();
}

class _TokenSwapWidgetState extends ConsumerState<SwapTokenSwapWidget> {
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
                child: Row(children: [
                  SvgPicture.asset(
                      ref.watch(swapTokensProvider).when(
                            loading: (data) {
                              return data.first.tokenImage!;
                            },
                            error: (data) => data.first.tokenImage!,
                            success: (data) => data.first.tokenImage!,
                          ),
                      width: 30.sp,
                      height: 30.sp),
                  8.horizontalSpace,
                  Text(
                    ref.watch(swapTokensProvider).when(
                          loading: (data) {
                            return data.first.token!;
                          },
                          error: (data) => data.first.token!,
                          success: (data) => data.first.token!,
                        ),
                    style: FontConstant.appNormalFont.copyWith(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  15.horizontalSpace,
                  SvgPicture.asset('assets/icons/arrow_down.svg'),
                ])),
            SizedBox(
              height: 60.sp,
              width: 90.sp,
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: TextField(
                      controller: ref
                          .read(swapQuoteControllerProvider.notifier)
                          .sellExchangeController,
                      keyboardType:
                          const TextInputType.numberWithOptions(decimal: true),
                      inputFormatters: const <TextInputFormatter>[
                        // FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
                      ],
                      decoration: const InputDecoration(
                        hintText: "0.00",
                        border: InputBorder.none,
                        isDense: true,
                        hintStyle: TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      style: FontConstant.appNormalFont.copyWith(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      onChanged: (input) {
                        final sellToken = ref.watch(swapTokensProvider).when(
                              loading: (data) {
                                return data.first.tokenAddress!;
                              },
                              error: (data) => data.first.tokenAddress!,
                              success: (data) => data.first.tokenAddress!,
                            );

                        final buyToken = ref.watch(swapTokensProvider).when(
                              loading: (data) {
                                return data.last.tokenAddress!;
                              },
                              error: (data) => data.last.tokenAddress!,
                              success: (data) => data.last.tokenAddress!,
                            );

                        ref
                            .read(getAmountValueControllerProvider.notifier)
                            .updateValue(input);

                        ref
                            .read(swapQuoteControllerProvider.notifier)
                            .swapQuotes(
                                amount: input,
                                sellToken: sellToken,
                                buyToken: buyToken);
                      },
                    ),
                  ),
                ],
              ),
            ),
            // Create Textfield similar to that of uniswap in flutter
          ],
        ),
        20.verticalSpace,
        Builder(builder: (context) {
          return Text(
            ref.watch(tokenControllerProvider).maybeWhen(
                  orElse: () => "Balance: 0.0 ",
                  success: (balance) {
                    return ref.watch(swapTokensProvider).maybeWhen(
                        orElse: () {
                          return "Balance: 0.0  ";
                        },
                        loading: (data) {
                          return "Balance: 0.0  ${data.first.token}";
                        },
                        error: (data) => "Balance: 0.0  ${data.first.token}",
                        success: (data) {
                          return "Balance: ${double.parse(balance.result!.first.balance)}  ${data.first.token}";
                        });
                  },
                ),
            style: FontConstant.appNormalFont.copyWith(
              color: ColorConstant.lightSystemColor,
              fontSize: 12.sp,
              fontWeight: FontWeight.w400,
            ),
          );
        }),
        5.verticalSpace,
      ],
    );
  }
}
