import 'package:cached_network_image/cached_network_image.dart';
import 'package:exchange_mobile/core/constants/color_constants.dart';
import 'package:exchange_mobile/core/constants/fonts_constants.dart';
import 'package:exchange_mobile/core/constants/property_constants.dart';
import 'package:exchange_mobile/core/extensions/string_extension.dart';
import 'package:exchange_mobile/presentation/notifier/controller/login_controller.dart';
import 'package:exchange_mobile/presentation/notifier/controller/wallet_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CurrentUsersWidget extends ConsumerStatefulWidget {
  const CurrentUsersWidget({
    super.key,
  });

  @override
  ConsumerState<CurrentUsersWidget> createState() => _CurrentUsersWidgetState();
}

class _CurrentUsersWidgetState extends ConsumerState<CurrentUsersWidget> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ref.read(walletNotifierController.notifier).getWalletDetails();
  }

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
