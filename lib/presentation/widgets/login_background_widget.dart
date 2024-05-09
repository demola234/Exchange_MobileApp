import 'package:flutter/material.dart';

class LoginBackgroundWidget extends StatelessWidget {
  const LoginBackgroundWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
          image: DecorationImage(
        image: AssetImage('assets/images/login_background.png'),
        fit: BoxFit.cover,
      )),
    );
  }
}
