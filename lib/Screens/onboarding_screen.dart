import 'package:fasion_flare_ggpp/Constans/consts.dart';
import 'package:fasion_flare_ggpp/Core/app_colors/app_colors.dart';
import 'package:fasion_flare_ggpp/Screens/signin_screen.dart';
import 'package:fasion_flare_ggpp/Widgets/app/dot_indicator.dart';
import 'package:fasion_flare_ggpp/Widgets/app/onboard_content.dart';
import 'package:fasion_flare_ggpp/Widgets/app_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  static String id = 'Onboarding';

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  bool notLastScreen = true;

  late PageController _pageController;
  int _pageIndex = 0;

  @override
  void initState() {
    _pageController = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.green,
      body: Padding(
        padding: const EdgeInsets.only(top: 100),
        child: Column(
          children: [
            Expanded(
              child: PageView.builder(
                itemCount: demo_Data.length,
                onPageChanged: (index) {
                  setState(() {
                    _pageIndex = index;
                  });
                },
                // physics: const BouncingScrollPhysics(),
                controller: _pageController,
                itemBuilder: (context, index) {
                  return OnboardingContent(
                    image: demo_Data[index].image,
                    title: demo_Data[index].title,
                    desc: demo_Data[index].desc,
                    screenNum: index,
                  );
                },
              ),
            ),
            Container(
              height: 100,
              width: double.infinity,
              decoration: const BoxDecoration(color: AppColors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Gap(16),
                  InkWell(
                    onTap: () => _pageController.jumpToPage(3),
                    child: Visibility(
                      visible: _pageIndex == 3 ? false : true,
                      child: const AppText(
                        title: "Skip",
                        color: AppColors.black,
                        fontSize: 16,
                        fontFamily: Fprimary,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  const Spacer(),
                  ...List.generate(
                      demo_Data.length,
                      (index) => Padding(
                            padding: const EdgeInsets.only(right: 4),
                            child: DotIndicator(
                              isActive: index == _pageIndex,
                            ),
                          )),
                  const Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      shape: const CircleBorder(),
                      backgroundColor: AppColors.green,
                      fixedSize: const Size(60, 60),
                    ),
                    onPressed: () {
                      _pageIndex == 3
                          ? Navigator.pushNamed(context, SigninScreen.id)
                          : _pageController.nextPage(
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );
                    },
                    child: _pageIndex == 3
                        ? const Text(
                            "GO",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          )
                        : const Icon(Icons.arrow_forward_ios),
                  ),
                  const Gap(16),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class Onboard {
  final String image, title, desc;

  Onboard({
    required this.image,
    required this.title,
    required this.desc,
  });
}

final List<Onboard> demo_Data = [
  Onboard(
    image: "assets/Images/2.1 Congratulation 1.png",
    title: "AI-Powered Style Matchmaker",
    desc:
        "Get ready to slay every day, with zero fashion fatigue. Let's unleash your inner style icon!",
  ),
  Onboard(
    image: "assets/Images/2.2 Happy Jumping 1.png",
    title: "Mix and match, experiment, and express",
    desc: "Interactive style lets you co-create your look.",
  ),
  Onboard(
    image: "assets/Images/2.2 Love 1.png",
    title: "Go beyond trends",
    desc:
        "Define your style with playful quizzes and immersive virtual try-ons.",
  ),
  Onboard(
    image: "assets/Images/2.3 Jumping 2 1.png",
    title: "Now we can dive into our App",
    desc: "",
  ),
];
