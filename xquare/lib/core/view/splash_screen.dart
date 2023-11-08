import 'dart:async';

import 'package:flutter/material.dart';
import 'package:xquare/core/widget/nav_widget.dart';
import 'package:xquare/screen/home/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(milliseconds: 1500), () {
      Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (context) => NavWidget()), (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Center(child: Image.asset('assets/images/xquare_logo.png')),
    );
  }
}
