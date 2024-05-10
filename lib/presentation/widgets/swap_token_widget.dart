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

class SwapTokenSwapWidget extends ConsumerStatefulWidget {
  const SwapTokenSwapWidget({
    super.key,
  });

  @override
  ConsumerState<SwapTokenSwapWidget> createState() => _TokenSwapWidgetState();
}

class _TokenSwapWidgetState extends ConsumerState<SwapTokenSwapWidget> {
  final _exchangeController = TextEditingController();
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
                    style: const TextStyle(
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
                      controller: _exchangeController,
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
                      style: const TextStyle(
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                      onChanged: (input) {
                        ref
                            .read(swapQuoteControllerProvider.notifier)
                            .swapQuotes(amount: input);
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
                  orElse: () => "Bal: 0.0",
                  success: (balance) {
                    return ref.watch(swapTokensProvider).when(
                        loading: (data) {
                          return data.last.token!;
                        },
                        error: (data) => data.last.token!,
                        success: (data) {
                          return "Balance: ${balance.result!.first.balance.toString()}  ${data.first.token}";
                        });
                  },
                ),
            style: const TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          );
        }),
        5.verticalSpace,
      ],
    );
  }
}
