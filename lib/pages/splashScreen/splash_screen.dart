import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:my_protfolio/templete/layoutTemplete.dart';
import 'package:page_transition/page_transition.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: Lottie.asset('images/lotti_animation.json'),
      splashIconSize: 100,
      nextScreen: LayoutTemplete(),
      backgroundColor: Color(0xFF212936),
      duration: 4000,
      splashTransition: SplashTransition.fadeTransition,
      //pageTransitionType: PageTransitionType.scale,
    );
  }
}
