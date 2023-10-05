import 'package:flutter/material.dart';

class ThirdPartyLoginButton extends StatelessWidget {
  const ThirdPartyLoginButton({
    super.key,
    required this.screenWidth,
    required this.screenHeight,
    required this.loginParty,
    required this.assetName,
  });

  final String assetName;
  final String loginParty;
  final double screenWidth;
  final double screenHeight;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: screenWidth * 0.4,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.transparent),
          elevation: MaterialStateProperty.all(0),
          side: MaterialStateProperty.all(
            const BorderSide(color: Colors.grey),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
        onPressed: () {},
        child: Row(
          children: [
            Image.asset(
              assetName,
              height: screenHeight * 0.025,
            ),
            SizedBox(
              width: 0.045 * screenWidth,
            ),
            Text(
              loginParty,
            ),
          ],
        ),
      ),
    );
  }
}
