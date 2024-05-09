import 'package:flutter/material.dart';

class CreateWalletBackground extends StatelessWidget {
  const CreateWalletBackground({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/wallet_background.png'),
        fit: BoxFit.cover,
      )),
    );
  }
}
