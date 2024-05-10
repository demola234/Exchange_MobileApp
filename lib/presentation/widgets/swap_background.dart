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
                Colors.black.withOpacity(0.8),
                BlendMode.colorDodge,
              ))),
    );
  }
}
