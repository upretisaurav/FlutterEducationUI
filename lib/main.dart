import 'package:flutter/material.dart';
import 'package:learning_platform/features/onboarding/screens/onboarding_screen.dart';
import 'shared/color_schemes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(useMaterial3: true, colorScheme: lightColorScheme),
      darkTheme: ThemeData(useMaterial3: true, colorScheme: darkColorScheme),
      home: const OnboardingScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
