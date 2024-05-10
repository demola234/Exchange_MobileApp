import 'package:exchange_mobile/core/constants/color_constants.dart';
import 'package:exchange_mobile/core/constants/property_constants.dart';
import 'package:exchange_mobile/presentation/notifier/controller/swap_quote_controller.dart';
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () async {},
          child: GestureDetector(
            onTap: () {
              // ref.read(etheriumControllerProvider.notifier).getTokenBalance();
              // ref.read(tokenControllerProvider.notifier).getTokenBalance();
              // ref.read(swapQuoteControllerProvider.notifier).swapQuotes();
            },
            child: Container(
                padding: PropertyConstant.innerUserPadding,
                decoration: ShapeDecoration(
                  color: ColorConstant.darkShades2.withOpacity(0.24),
                  shape: RoundedRectangleBorder(
                    borderRadius: PropertyConstant.containerBorderRadius,
                  ),
                ),
                child: Row(children: [
                  SvgPicture.asset("assets/icons/usdt.svg"),
                  8.horizontalSpace,
                  const Text(
                    'USDT',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  15.horizontalSpace,
                  SvgPicture.asset('assets/icons/arrow_down.svg'),
                ])),
          ),
        ),
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
    );
  }
}
