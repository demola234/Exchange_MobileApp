import 'package:exchange_mobile/core/constants/color_constants.dart';
import 'package:exchange_mobile/core/constants/property_constants.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SwapSummary extends StatefulWidget {
  const SwapSummary({
    super.key,
  });

  @override
  State<SwapSummary> createState() => _SwapSummaryState();
}

class _SwapSummaryState extends State<SwapSummary> {
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
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Expected payment',
                      style: TextStyle(
                        color: Color(0xFFCACACA),
                        fontSize: 14,
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '0.00 SOL',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ]),
              15.verticalSpace,
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Price Impact',
                      style: TextStyle(
                        color: Color(0xFFCACACA),
                        fontSize: 14,
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '0%',
                      style: TextStyle(
                        color: Color(0xFF4BCE97),
                        fontSize: 14,
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w700,
                        height: 0,
                      ),
                    )
                  ]),
              15.verticalSpace,
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Min received after slippage (0%)',
                      style: TextStyle(
                        color: Color(0xFFCACACA),
                        fontSize: 14,
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '0.00 SOL',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ]),
              15.verticalSpace,
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Network Fee',
                      style: TextStyle(
                        color: Color(0xFFCACACA),
                        fontSize: 14,
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '0.00 SOL',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    )
                  ]),
              15.verticalSpace,
              const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Provider',
                      style: TextStyle(
                        color: Color(0xFFCACACA),
                        fontSize: 14,
                        fontFamily: 'Nunito Sans',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Text(
                      '--',
                      style: TextStyle(
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
