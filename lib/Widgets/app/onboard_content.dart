import 'package:fasion_flare_ggpp/Constans/consts.dart';
import 'package:fasion_flare_ggpp/Core/app_colors/app_colors.dart';
import 'package:fasion_flare_ggpp/Widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({
    required this.image,
    required this.desc,
    required this.title,
    super.key,
    required this.screenNum,
  });

  final String image, title, desc;
  final num screenNum;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SizedBox(
          height: 500,
          width: double.infinity,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Column(
              children: [
                // Visibility(
                //   visible: screenNum == 3 ? false : false,
                //   child: Align(
                //     alignment: Alignment.centerLeft,
                //     child: GestureDetector(
                //       child: const AppText(
                //         title: "skip",
                //         fontSize: 16,
                //         fontFamily: Fprimary,
                //         fontWeight: FontWeight.w400,
                //       ),
                //     ),
                //   ),
                // ),
                Image.asset(image),
              ],
            ),
          ),
        ),
        Container(
          decoration: const BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40),
              topRight: Radius.circular(40),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
                left: 16, top: 20, right: 100, bottom: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(16),
                AppText(
                  title: title,
                  fontFamily: Fprimary,
                  color: AppColors.green,
                  fontSize: 24,
                  fontWeight: FontWeight.w600,
                ),
                const Gap(18),
                AppText(
                  title: desc,
                  color: AppColors.black,
                  fontFamily: Fprimary,
                  fontSize: 18,
                  fontWeight: FontWeight.w400,
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
