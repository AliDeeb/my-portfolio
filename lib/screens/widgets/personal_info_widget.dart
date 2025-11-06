import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../core/constants/app_colors.dart';
import '../../core/constants/app_constants.dart';
import '../../core/theme/custom_theme_colors.dart';
import '../../core/theme/text_theme_styles.dart';

class PersonalInfoWidget extends StatefulWidget {
  const PersonalInfoWidget({
    super.key,
    this.isMobile = false,
  });

  final bool isMobile;

  @override
  State<PersonalInfoWidget> createState() => _PersonalInfoWidgetState();
}

class _PersonalInfoWidgetState extends State<PersonalInfoWidget> {
  final controller = ExpansibleController();

  @override
  Widget build(BuildContext context) {
    final textColor =
        Theme.of(context).extension<CustomThemeColors>()!.textColor;
    bool isLight = Theme.brightnessOf(context) == Brightness.light;

    if (widget.isMobile) {
      return Stack(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 10),
            child: Column(
              children: [
                Row(
                  children: [
                    _buildImage(),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        _buildName(textColor),
                        5.verticalSpace,
                        _buildLabel(textColor, isLight),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 0.7.sw,
                  child: ExpansionTile(
                    shape: Border.all(color: Colors.transparent),
                    controller: controller,
                    showTrailingIcon: false,
                    title: const SizedBox.shrink(),
                    dense: true,
                    visualDensity: VisualDensity.compact,
                    tilePadding: const EdgeInsets.all(0),
                    childrenPadding: const EdgeInsets.all(0),
                    minTileHeight: 0,
                    expansionAnimationStyle: const AnimationStyle(
                      duration: Duration(milliseconds: 500),
                      curve: Curves.easeOutBack,
                    ),
                    children: [
                      _buildContactInfo(),
                      5.verticalSpace,
                      _buildResumeButton(),
                      20.verticalSpace,
                      _buildSocialMediaLinks(),
                    ],
                  ),
                )
              ],
            ),
          ),
          PositionedDirectional(
            end: 0,
            child: InkWell(
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              onTap: () {
                if (controller.isExpanded) {
                  controller.collapse();
                } else {
                  controller.expand();
                }
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.blueGrey, width: 0.2),
                  borderRadius: const BorderRadiusDirectional.only(
                    topStart: Radius.circular(0),
                    topEnd: Radius.circular(10),
                    bottomStart: Radius.circular(10),
                    bottomEnd: Radius.circular(0),
                  ),
                ),
                child: Row(
                  children: [
                    Text(
                      "Contact info",
                      style: TextThemeStyles.labelSmall,
                    ),
                    5.horizontalSpace,
                    ListenableBuilder(
                      listenable: controller,
                      builder: (context, child) {
                        return Icon(
                          controller.isExpanded
                              ? Icons.keyboard_arrow_up_rounded
                              : Icons.keyboard_arrow_down_rounded,
                          size: 14,
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      );
    }

    return Container(
      margin: EdgeInsets.only(top: 100.h),
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: widget.isMobile
          ? null
          : BoxDecoration(
              color: isLight ? Colors.grey.shade100 : Colors.grey.shade900,
              border: Border.all(color: Colors.blueGrey, width: 0.1),
              borderRadius: BorderRadius.circular(10),
            ),
      child: Column(
        children: [
          // Name and Photo.
          Column(
            children: [
              _buildImage(),
              30.verticalSpace,
              _buildName(textColor),
              10.verticalSpace,
              _buildLabel(textColor, isLight),
            ],
          ),
          50.verticalSpace,

          // Contact info.
          Padding(
            padding:
                EdgeInsets.symmetric(horizontal: widget.isMobile ? 50.w : 75.w),
            child: _buildContactInfo(),
          ),

          // resume.
          50.verticalSpace,
          _buildResumeButton(),

          // social media links
          25.verticalSpace,
          _buildSocialMediaLinks(),
        ],
      ),
    );
  }

  Widget _buildImage() {
    final imageSize = 1.sw * (widget.isMobile ? 0.25 : 0.15);

    return Container(
      width: imageSize,
      height: imageSize,
      decoration: const BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage(
          image: AssetImage(AppConstants.IMG_PROFILE_IMAGE),
        ),
      ),
    );
  }

  Widget _buildName(Color? textColor) {
    return Text(
      "Ali Deeb",
      style: widget.isMobile
          ? TextThemeStyles.bodyMedium.copyWith(
              fontWeight: FontWeight.bold,
              color: textColor,
            )
          : TextThemeStyles.displaySmall.copyWith(
              fontWeight: FontWeight.bold,
              color: textColor,
            ),
    );
  }

  Widget _buildLabel(Color? textColor, bool isLight) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 10,
        vertical: 2,
      ),
      decoration: BoxDecoration(
        color: isLight ? Colors.grey.shade200 : Colors.grey.shade800,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Text(
        "Flutter Developer",
        style: widget.isMobile
            ? TextThemeStyles.labelSmall.copyWith(
                fontWeight: FontWeight.bold,
                fontSize: 10.sp,
                color: textColor,
              )
            : TextThemeStyles.labelMedium.copyWith(
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
      ),
    );
  }

  Widget _buildContactInfo() {
    return Column(
      children: [
        _buildInfoRow(Icons.email_outlined, "ali1alideeb@gmail.com", context),
        // const Divider(color: AppColors.greyColor100, height: 30),
        // _buildInfoRow(Icons.phone_outlined, "0888888888", context),
        const Divider(color: AppColors.greyColor200, height: 30),
        _buildInfoRow(Icons.location_pin, "Syria / Damascus", context),
        const Divider(color: AppColors.greyColor200, height: 30),
      ],
    );
  }

  Widget _buildResumeButton() {
    return FilledButton(
      style: FilledButton.styleFrom(
        padding: EdgeInsets.symmetric(
          horizontal: widget.isMobile ? 20.w : 50.w,
          vertical: widget.isMobile ? 10.h : 30.h,
        ),
      ),
      onPressed: onDownloadResumeTap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.file_download_outlined,
            size: widget.isMobile ? 15 : 20,
            color: Colors.white,
          ),
          10.horizontalSpace,
          Text(
            "Download Resume",
            style: widget.isMobile
                ? TextThemeStyles.bodySmall.copyWith(
                    color: Colors.white,
                  )
                : TextThemeStyles.bodyLarge.copyWith(
                    color: Colors.white,
                  ),
          ),
        ],
      ),
    );
  }

  Widget _buildSocialMediaLinks() {
    return SizedBox(
      height: 50.h,
      child: Wrap(
        spacing: 20.w,
        children: [
          InkWell(
            onTap: onLinkedInTap,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                AppConstants.IMG_LINKEDIN_LOGO,
                height: widget.isMobile ? 30.h : 50.h,
              ),
            ),
          ),
          InkWell(
            onTap: onGithubTap,
            child: DecoratedBox(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(
                AppConstants.IMG_GITHUB_LOGO,
                height: widget.isMobile ? 30.h : 50.h,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildInfoRow(IconData icon, String text, BuildContext context) {
    final textColor =
        Theme.of(context).extension<CustomThemeColors>()!.textColor;
    bool isLight = Theme.brightnessOf(context) == Brightness.light;

    return Row(
      children: [
        Icon(
          icon,
          color:
              isLight ? Theme.of(context).primaryColor : AppColors.greyColor200,
          size: 20.sp,
        ),
        15.horizontalSpace,
        Text(
          text,
          style: TextThemeStyles.labelSmall.copyWith(
            fontWeight: FontWeight.bold,
            color: textColor,
          ),
        ),
      ],
    );
  }

  void onDownloadResumeTap() async {
    final uri = Uri.parse(
        "https://docs.google.com/document/d/1exNrLAESWLeb7SO5Vr9e5vZVwTLY7SqPj2pQLl5NuT8/edit?usp=drive_link");
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    }
  }

  void onLinkedInTap() async {
    final uri = Uri.parse("https://www.linkedin.com/in/ali-deeb-62b1561a5");
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    }
  }

  void onGithubTap() async {
    final uri = Uri.parse("https://github.com/AliDeeb");
    if (await canLaunchUrl(uri)) {
      launchUrl(uri);
    }
  }
}
