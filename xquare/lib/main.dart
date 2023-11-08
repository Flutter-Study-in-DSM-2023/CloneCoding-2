import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:xquare/core/view/splash_screen.dart';
import 'package:xquare/screen/feed/feed_screen.dart';
import 'package:xquare/screen/time/time_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: const Color(0xFF9650FA),
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}