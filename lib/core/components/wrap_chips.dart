import 'package:exchange_mobile/core/constants/color_constants.dart';
import 'package:flutter/material.dart';

class WrapChips extends StatefulWidget {
  final List<String> mnemonics;
  const WrapChips({required this.mnemonics, super.key});

  @override
  _WrapChipsState createState() => _WrapChipsState();
}

class _WrapChipsState extends State<WrapChips>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 1000),
    );

    _animation = Tween(begin: 0.0, end: 1.0).animate(
      CurvedAnimation(
        parent: _controller,
        curve: Curves.easeInOut,
      ),
    );

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: widget.mnemonics.map((chip) {
                  return ScaleTransition(
                    scale: _animation,
                    child: RotationTransition(
                      turns: _animation,
                      child: GestureDetector(
                        child: Chip(
                          label: Text(chip),
                          backgroundColor: ColorConstant.darkShades1,
                          labelStyle: const TextStyle(
                            color: ColorConstant.lightSystemColor,
                          ),
                        ),
                      ),
                    ),
                  );
                }).toList(),
              )
            ],
          ),
        );
      },
    );
  }
}
