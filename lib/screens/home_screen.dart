import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:my_portfolio/core/theme/custom_theme_colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: 1.sh,
        child: Row(
          children: [
            Expanded(flex: 1, child: _buildPersonalInfoSection()),
            Expanded(flex: 3, child: Container(color: Colors.blue)),
          ],
        ),
      ),
    );
  }

  Widget _buildPersonalInfoSection() {
    final imageSize = 1.sw * 0.15;
    final textColor =
        Theme.of(context).extension<CustomThemeColors>()!.textColor;

    return Column(
      children: [
        Container(
          width: imageSize,
          height: imageSize,
          decoration: const BoxDecoration(
            color: Colors.red,
            shape: BoxShape.circle,
          ),
        ),
        30.verticalSpace,
        Text(
          "Ali Deeb",
          style: Theme.of(context).textTheme.displayMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
        ),
        10.verticalSpace,
        Text(
          "Senior flutter developer",
          style: Theme.of(context).textTheme.labelMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
        ),
        50.verticalSpace,
        _buildInfoRow(Icons.email_outlined, "ali1alideeb@gmail.com"),
        _buildInfoRow(Icons.phone_outlined, "0888888888"),
      ],
    );
  }

  Widget _buildInfoRow(IconData icon, String text) {
    final textColor =
        Theme.of(context).extension<CustomThemeColors>()!.textColor;

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: Colors.grey.shade300,
          size: 20.sp,
        ),
        15.horizontalSpace,
        Text(
          text,
          style: Theme.of(context).textTheme.labelSmall?.copyWith(
                fontWeight: FontWeight.bold,
                color: textColor,
              ),
        ),
      ],
    );
  }
}
