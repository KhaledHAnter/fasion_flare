import 'package:fasion_flare_ggpp/Core/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  const AppText({
    super.key,
    required this.title,
    this.maxLines,
    this.color = AppColors.white,
    this.fontSize = 14,
    this.fontWeight = FontWeight.w400,
    this.fontFamily,
    this.textAlign,
    this.height,
    this.letterSpacing,
  });

  final String title;
  final int? maxLines;
  final double? height;
  final double? letterSpacing;
  final Color color;
  final double fontSize;
  final FontWeight fontWeight;
  final String? fontFamily;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      maxLines: maxLines,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: fontWeight,
        fontFamily: fontFamily,
        height: height,
        letterSpacing: letterSpacing,
      ),
      textAlign: textAlign,
    );
  }
}
