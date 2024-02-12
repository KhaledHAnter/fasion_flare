import 'package:fasion_flare_ggpp/Core/app_colors/app_colors.dart';
import 'package:flutter/material.dart';

class DotIndicator extends StatelessWidget {
  const DotIndicator({super.key, this.isActive = false});
  final bool isActive;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 300),
      decoration: BoxDecoration(
        color: isActive ? AppColors.green : AppColors.green.withOpacity(0.4),
        borderRadius: BorderRadius.circular(12),
      ),
      height: isActive ? 20 : 5,
      width: 5,
    );
  }
}
