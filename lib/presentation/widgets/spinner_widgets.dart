import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpinnerBorder extends StatefulWidget {
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
  _SpinnerBorderState createState() => _SpinnerBorderState();
}

class _SpinnerBorderState extends State<SpinnerBorder>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..repeat();
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
                child: GestureDetector(
                  onTap: () {
                    // SwapContractCalls.swapExactInputSingle();
                  },
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
            ),
            Center(
              child: CustomPaint(
                size: Size(widget.size, widget.size),
                painter: SpinnerPainter(
                  spinnerWidth: widget.spinnerWidth,
                  color: widget.color,
                  progress: _animation.value,
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

class GlowPainter extends CustomPainter {
  final double size;
  final Color color;

  GlowPainter({required this.size, required this.color});

  @override
  void paint(Canvas canvas, Size size) {
    final double radius = size.width / 2;

    final Paint paint = Paint()
      ..color = color.withOpacity(0.2)
      ..style = PaintingStyle.stroke
      ..strokeWidth = 10 // Adjust width for the glow effect
      ..maskFilter =
          const MaskFilter.blur(BlurStyle.normal, 10); // Apply blur effect

    canvas.drawCircle(Offset(radius, radius), radius + 10,
        paint); // Extend glow outside the container
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
