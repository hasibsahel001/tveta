
import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:tveta/other_pages/constants.dart';
import 'package:tveta/other_pages/home_page.dart';


class SplashScreen extends StatelessWidget {
  static const String id = "splash_screen";

  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Column(
        children: [
          Center(
            child: LottieBuilder.asset("lib/images/anima2.json"),
          ),
        ],
      ),
      nextScreen:  HomePage(),
      splashIconSize: 450,
      animationDuration: const Duration(microseconds: 400),

      backgroundColor: kWidgetsColor,
    );
  }
}
