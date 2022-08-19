import 'package:b2bx/screens/sign_in_screen.dart';
import 'package:b2bx/utils/next_screen.dart';
import 'package:flutter/material.dart';

import '../config/config.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 1500)).then((value) {
      nextScreen(context, SignInScreen());
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Image(
          image: AssetImage(Config().splashIcon),
          height: 120,
          width: 120,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
