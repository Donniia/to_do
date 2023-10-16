import 'dart:async';

import 'package:flutter/material.dart';
import 'package:to_do/core/theme/application_theme.dart';
import 'package:to_do/home_layout.dart';

class SplashScreen extends StatelessWidget {
  static const String routName = "splashscreen";

  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 3), () {
      Navigator.pushReplacementNamed(context, Home.routeName);
    });
    var media = MediaQuery.of(context).size;
    return Scaffold(
        body: Image.asset(
          AppTheme.isDark?"assets/images/splash_dark.png":
      "assets/images/splash.png",
      width: media.width,
      height: media.height,
      fit: BoxFit.cover,
    ));
  }
}
