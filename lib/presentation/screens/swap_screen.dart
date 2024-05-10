import 'dart:math';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:exchange_mobile/core/constants/color_constants.dart';
import 'package:exchange_mobile/core/constants/fonts_constants.dart';
import 'package:exchange_mobile/core/constants/property_constants.dart';
import 'package:exchange_mobile/core/extensions/string_extension.dart';
import 'package:exchange_mobile/presentation/notifier/controller/login_controller.dart';
import 'package:exchange_mobile/presentation/notifier/controller/swap_quote_controller.dart';
import 'package:exchange_mobile/presentation/notifier/controller/wallet_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SwapScreen extends StatefulWidget {
  const SwapScreen({super.key});

  @override
  State<SwapScreen> createState() => _SwapScreenState();
}

class _SwapScreenState extends State<SwapScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        body: Stack(children: [
          const Positioned(child: SwapBackgroundWidget()),
          Padding(
            padding: PropertyConstant.containerPadding,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                50.verticalSpace,
                const CurrentUsersWidget(),
                15.verticalSpace,
                Expanded(
                  child: ListView(
                    shrinkWrap: true,
                    padding: EdgeInsets.zero,
                    children: [
                      10.verticalSpace,
                      Container(
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
                                'Swap',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Color(0xFFF5F5F5),
                                  fontSize: 24,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              30.verticalSpace,
                              const SwapTokenSwapWidget(),
                              20.verticalSpace,
                              Builder(builder: (context) {
                                return Consumer(
                                  builder: (_, WidgetRef ref, __) {
                                    return const Text(
                                      'Bal: 2,555 USDT',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 12,
                                        fontWeight: FontWeight.w400,
                                      ),
                                    );
                                  },
                                );
                              }),
                              5.verticalSpace,
                              const SpinnerBorder(),
                              5.verticalSpace,
                              const BuyTokenSwapWidget(),
                              20.verticalSpace,
                              const Text(
                                'Bal: 2,555 USDT',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          )),
                      20.verticalSpace,
                      Container(
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
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
                              ])),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]));
  }
}

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

class BuyTokenSwapWidget extends ConsumerStatefulWidget {
  const BuyTokenSwapWidget({
    super.key,
  });

  @override
  ConsumerState<BuyTokenSwapWidget> createState() => _BuyTokenSwapWidget();
}

class _BuyTokenSwapWidget extends ConsumerState<BuyTokenSwapWidget> {
  final _exchangeController = TextEditingController();
  final _buyexchangeController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        GestureDetector(
          onTap: () async {},
          child: GestureDetector(
            onTap: () async {
              // ref.read(etheriumControllerProvider.notifier).getTokenBalance();
              // ref.read(tokenControllerProvider.notifier).getTokenBalance();
              // ref.read(swapQuoteControllerProvider.notifier).swapQuotes();
              // await SwapContractCalls.swapExactInputSingle();
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
                child: Consumer(builder: (context, ref, child) {
                  return TextField(
                    controller: _buyexchangeController
                      ..text = ref.watch(swapQuoteControllerProvider).maybeWhen(
                            orElse: () => "0.0",
                            success: (data) {
                              return data.buyAmount.toString();
                            },
                          ),
                    keyboardType:
                        const TextInputType.numberWithOptions(decimal: true),
                    inputFormatters: <TextInputFormatter>[
                      FilteringTextInputFormatter.allow(RegExp(r'[0-9.]')),
                    ],
                    decoration: InputDecoration(
                      hintText:
                          ref.watch(swapQuoteControllerProvider).maybeWhen(
                                orElse: () => "0.00",
                                success: (data) {
                                  final buy = data.buyAmount / pow(10, 18);
                                  return buy.toString();
                                },
                              ),
                      enabled: true,
                      border: InputBorder.none,
                      isDense: true,
                      hintStyle: const TextStyle(
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
                      // ref
                      //     .read(swapQuoteControllerProvider.notifier)
                      //     .swapQuotes(amount: input);
                    },
                  );
                }),
              ),
            ],
          ),
        ),
        // Create Textfield similar to that of uniswap in flutter
      ],
    );
  }
}

class CurrentUsersWidget extends ConsumerStatefulWidget {
  const CurrentUsersWidget({
    super.key,
  });

  @override
  ConsumerState<CurrentUsersWidget> createState() => _CurrentUsersWidgetState();
}

class _CurrentUsersWidgetState extends ConsumerState<CurrentUsersWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        padding: PropertyConstant.innerUserPadding,
        decoration: ShapeDecoration(
          gradient: ColorConstant.darkLinearGradient,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(900),
          ),
        ),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 40.sp,
                width: 40.sp,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                ),
                child: ref.watch(loginUserNotifierController).maybeWhen(
                      orElse: () =>
                          SvgPicture.asset('assets/icons/profile_circle.svg'),
                      authenticated: (user) {
                        return CachedNetworkImage(
                          imageUrl: user.photoUrl ?? "",
                          imageBuilder: (context, imageProvider) => Container(
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              image: DecorationImage(
                                image: imageProvider,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          placeholder: (context, url) => SvgPicture.asset(
                              'assets/icons/profile_circle.svg'),
                          errorWidget: (context, url, error) =>
                              SvgPicture.asset(
                                  'assets/icons/profile_circle.svg'),
                        );
                      },
                    ),
              ),
              5.horizontalSpace,
              Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Consumer(
                      builder: (context, ref, child) {
                        return Text(
                            ref.watch(loginUserNotifierController).maybeWhen(
                                orElse: () => "",
                                authenticated: (user) => user.displayName!),
                            style: FontConstant.appNormalFont.copyWith(
                              color: ColorConstant.lightSystemColor,
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w700,
                            ));
                      },
                    ),
                    5.verticalSpace,
                    Consumer(builder: (context, ref, child) {
                      return Text(
                        ref.watch(walletNotifierController).maybeWhen(
                            orElse: () => "",
                            generatedSeedPhrase: (user) =>
                                user.publicKey!.shortenHexString(4, 37)),
                        style: FontConstant.appNormalFont.copyWith(
                          color: ColorConstant.lightSystemColor,
                          fontSize: 12.sp,
                          fontWeight: FontWeight.w400,
                        ),
                      );
                    }),
                  ]),
              15.horizontalSpace,
              SvgPicture.asset('assets/icons/arrow_down.svg'),
            ]));
  }
}

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
