import 'package:fasion_flare_ggpp/Core/app_colors/app_colors.dart';
import 'package:fasion_flare_ggpp/Screens/onboarding_screen.dart';
import 'package:fasion_flare_ggpp/Widgets/app_button.dart';
import 'package:fasion_flare_ggpp/Widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  static String id = 'Welcome';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.green,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.max,
        children: [
          Container(
            height: 500,
            width: double.infinity,
            decoration: const BoxDecoration(),
            child: Stack(
              children: [
                Positioned(
                  top: 77,
                  right: 38,
                  left: 52,
                  child: Image.asset("assets/Images/1 Greeting 2.png"),
                ),
                Positioned(
                  top: 137,
                  right: 170,
                  child: Image.asset("assets/Images/1 Standing 2 1.png"),
                ),
                Positioned(
                  top: 168,
                  // right: 38,
                  left: 170,
                  child: Image.asset("assets/Images/1 Selfie 1.png"),
                ),
              ],
            ),
          ),
          Container(
            padding:
                const EdgeInsets.only(left: 16, top: 24, bottom: 24, right: 30),
            width: double.infinity,
            decoration: const BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40),
                    topRight: Radius.circular(40))),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Gap(16),
                const Text.rich(
                  TextSpan(
                    style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                      fontSize: 32,
                      color: AppColors.black,
                    ),
                    text: 'The ',
                    children: [
                      TextSpan(
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w700,
                          fontSize: 32,
                          color: AppColors.green,
                        ),
                        text: 'Fashion App ',
                        children: [
                          TextSpan(
                            style: TextStyle(
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.w600,
                              fontSize: 32,
                              color: AppColors.black,
                            ),
                            text: 'That \n Makes You Perfect',
                            children: [],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Gap(18),
                const AppText(
                  title:
                      "Dive into the world of 3D fashion models to explore the latest trends and styles effortlessly.",
                  color: AppColors.black,
                  fontFamily: 'Montserrat',
                  fontSize: 22,
                  fontWeight: FontWeight.w400,
                ),
                const Gap(40),
                AppButton(
                  title: "Let's Get Started",
                  color: AppColors.green,
                  onTap: () {
                    Navigator.pushNamed(context, OnboardingScreen.id);
                  },
                ),
                const Gap(18),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
