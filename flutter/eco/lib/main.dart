import 'package:eco/pages/augumented_reality.dart';
import 'package:eco/pages/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Onboarding(),
      debugShowCheckedModeBanner: false,
    );
  }
}
