import 'package:fasion_flare_ggpp/Core/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  const AppTextField({
    super.key,
    required this.hint,
    this.cursorHeight = 28,
    this.hintFontSize = 24,
    this.onChanged,
    this.validator,
    this.maxLength,
  });

  final String hint;
  final double cursorHeight;
  final double hintFontSize;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  final int? maxLength;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      maxLength: maxLength,
      onChanged: onChanged,
      validator: validator,
      keyboardAppearance: Brightness.dark,
      cursorColor: AppColors.white,
      cursorHeight: cursorHeight,
      style: TextStyle(
        color: AppColors.white,
        fontSize: hintFontSize,
      ),
      maxLines: null,
      decoration: InputDecoration(
        border: InputBorder.none,
        contentPadding: EdgeInsets.zero,
        hintText: hint,
        hintStyle: TextStyle(
          color: AppColors.black,
          fontSize: hintFontSize,
        ),
      ),
    );
  }
}
