import 'dart:math';

import 'package:exchange_mobile/presentation/notifier/controller/token_controller.dart';
import 'package:exchange_mobile/presentation/notifier/controller/token_swap_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpinnerBorder extends ConsumerStatefulWidget {
  final double size;
  final Color color;
  final double spinnerWidth;

  const SpinnerBorder({
    Key? key,
    this.size = 72,
    this.color = const Color(0xFF6FB9DA),
    this.spinnerWidth = 4,
  }) : super(key: key);

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _SpinnerBorderState();
}

class _SpinnerBorderState extends ConsumerState<SpinnerBorder>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    );
    _animation = Tween(begin: 0.0, end: 1.0).animate(_controller);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _animation,
      builder: (context, child) {
        return Stack(
          children: [
            Positioned.fill(
              child: Center(
                child: Container(
                    width: widget.size - 10,
                    height: widget.size,
                    decoration: const BoxDecoration(
                      color: Color(0xFF6FB9DA),
                      shape: BoxShape.circle,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: SvgPicture.asset(
                          "assets/icons/arrow_data_transfer.svg"),
                    )),
              ),
            ),
            InkWell(
              onTap: () {
                // SwapContractCalls.swapExactInputSingle();
                // print("here");
                ref.read(swapTokensProvider.notifier).swapTokens();
                ref.read(tokenControllerProvider.notifier).getTokenBalance();
                // animate once clicked and stop
                if (_animation.status == AnimationStatus.completed) {
                  _controller.reset();
                  _controller.forward();
                } else {
                  _controller.forward();
                }
              },
              child: Center(
                child: CustomPaint(
                  size: Size(widget.size, widget.size),
                  painter: SpinnerPainter(
                    spinnerWidth: widget.spinnerWidth,
                    color: widget.color,
                    progress: _animation.value,
                  ),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}

class SpinnerPainter extends CustomPainter {
  final double spinnerWidth;
  final Color color;
  final double progress;

  SpinnerPainter({
    required this.spinnerWidth,
    required this.color,
    required this.progress,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final double radius = size.width / 2;
    final double arcAngle = 2 * pi * progress;

    final Paint paint = Paint()
      ..color = color
      ..strokeWidth = spinnerWidth
      ..style = PaintingStyle.stroke
      ..strokeCap = StrokeCap.round;

    final Rect rect = Rect.fromCircle(
        center: Offset(radius, radius), radius: radius - spinnerWidth / 2);
    canvas.drawArc(rect, -pi / 2, arcAngle, false, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
