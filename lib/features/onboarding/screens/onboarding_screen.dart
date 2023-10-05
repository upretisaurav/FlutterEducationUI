import 'package:flutter/material.dart';
import 'package:learning_platform/features/login/screens/login_screen.dart';
import 'package:learning_platform/features/onboarding/components/custom_carousel.dart';

import '../components/custom_third_party_login_button.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    double screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: screenHeight * 0.07),
              child: Text(
                "Welcome",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary,
                  fontSize: 25,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
            Expanded(
              child: Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.04),
                child: const CustomCarousel(),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 0.02 * screenHeight),
              child: Text(
                "Login and registration are free",
                style: TextStyle(
                  color: Theme.of(context).colorScheme.primary.withOpacity(0.7),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 0.04 * screenHeight,
                left: 20,
                right: 20,
              ), // add some side padding
              child: SizedBox(
                width: double.infinity,
                height: 50,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const LoginScreen(),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Theme.of(context)
                        .colorScheme
                        .secondary, // background color
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25), // rounded edges
                    ),
                  ),
                  child: Text(
                    "Login with Email",
                    style: TextStyle(
                      color: Theme.of(context).colorScheme.onTertiary,
                    ),
                  ),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 1,
                    width: 100, // You can set this as you wish
                    color: Colors.grey,
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(horizontal: 8.0),
                    child: Text("OR"),
                  ),
                  Container(
                    height: 1,
                    width: 100, // You can set this as you wish
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            ThirdPartyLoginButton(
              screenWidth: screenWidth,
              screenHeight: screenHeight,
              assetName: 'assets/images/google.png',
              loginParty: "Google",
            ),
          ],
        ),
      ),
    );
  }
}
