import 'dart:math';

import 'package:exchange_mobile/core/constants/color_constants.dart';
import 'package:exchange_mobile/core/constants/property_constants.dart';
import 'package:exchange_mobile/presentation/notifier/controller/swap_quote_controller.dart';
import 'package:exchange_mobile/presentation/notifier/controller/token_controller.dart';
import 'package:exchange_mobile/presentation/notifier/controller/token_swap_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
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

class _BuyTokenSwapWidget extends ConsumerState<BuyTokenSwapWidget> {
  final _buyexchangeController = TextEditingController();
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
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    child: Consumer(builder: (context, ref, child) {
                      return TextField(
                        controller: _buyexchangeController
                          ..text =
                              ref.watch(swapQuoteControllerProvider).maybeWhen(
                                    orElse: () => "0.0",
                                    success: (data) {
                                      return data.buyAmount.toString();
                                    },
                                  ),
                        keyboardType: const TextInputType.numberWithOptions(
                            decimal: true),
                        inputFormatters: <TextInputFormatter>[
                          FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
                        ],
                        decoration: InputDecoration(
                          hintText:
                              ref.watch(swapQuoteControllerProvider).maybeWhen(
                                    orElse: () => "0.00",
                                    success: (data) {
                                      final buy = data.buyAmount / pow(10, 18);
                                      return buy.toString();
                                    },
                                  ),
                          enabled: true,
                          border: InputBorder.none,
                          isDense: true,
                          hintStyle: const TextStyle(
                            fontSize: 30.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                        style: const TextStyle(
                          fontSize: 30.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                        onChanged: (input) {
                          // ref
                          //     .read(swapQuoteControllerProvider.notifier)
                          //     .swapQuotes(amount: input);
                        },
                      );
                    }),
                  ),
                ],
              ),
            ),
            // Create Textfield similar to that of uniswap in flutter
          ],
        ),
        20.verticalSpace,
        Text(
          ref.watch(tokenControllerProvider).maybeWhen(
                orElse: () => "Bal: 0.0",
                success: (balance) {
                  return ref.watch(swapTokensProvider).when(
                      loading: (data) {
                        return data.last.token!;
                      },
                      error: (data) => data.last.token!,
                      success: (data) {
                        return "Balance: ${balance.result!.last.balance.toString()}  ${data.last.token}";
                      });
                },
              ),
          style: const TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
