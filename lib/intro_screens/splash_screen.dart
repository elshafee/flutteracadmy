import 'package:flutter/material.dart';
import 'package:flutter_academy/constants.dart';
import 'package:flutter_academy/intro_screens/onboarding.dart';
import 'package:flutter_academy/main_screen/home_screen.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    data();
  }

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      navigateRoute: don ? const HomeScreen() : const OnBoarding(),
      duration: 5000,
      imageSize: 130,
      imageSrc: "assets/images/logo.png",
      backgroundColor: Colors.white,
    );
  }
}
