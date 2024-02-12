import 'package:fasion_flare_ggpp/Screens/onboarding_screen.dart';
import 'package:fasion_flare_ggpp/Screens/signin_screen.dart';
import 'package:fasion_flare_ggpp/Screens/welcome_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Fashion Falre',
      routes: {
        WelcomeScreen.id: (context) => const WelcomeScreen(),
        OnboardingScreen.id: (context) => const OnboardingScreen(),
        SigninScreen.id: (context) => const SigninScreen()
      },
      initialRoute: WelcomeScreen.id,
    );
  }
}
