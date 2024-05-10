import 'package:exchange_mobile/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class SwapBackgroundWidget extends StatelessWidget {
  const SwapBackgroundWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: const AssetImage('assets/images/gradient_layer.png'),
              fit: BoxFit.cover,
              colorFilter: ColorFilter.mode(
                ColorConstant.darkShades1.withOpacity(0.8),
                BlendMode.colorDodge,
              ))),
    );
  }
}
