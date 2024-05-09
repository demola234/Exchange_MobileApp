// Flutter imports:
import 'package:exchange_mobile/core/constants/color_constants.dart';
import 'package:flutter/cupertino.dart';

extension LoadingOverlayMixin on BuildContext {
  static OverlayEntry? overlayEntry = OverlayEntry(
      opaque: false,
      builder: (context) => ColoredBox(
            color: ColorConstant.darkShades1.withOpacity(0.5),
            child: const Align(
                alignment: Alignment.center,
                child: CupertinoActivityIndicator(
                  color: ColorConstant.lightSystemColor,
                  radius: 20,
                )),
          ));

  // show overlay
  showOverlay() {
    Overlay.of(this).insert(overlayEntry!);
  }

  hide() {
    overlayEntry?.remove();
  }
}
