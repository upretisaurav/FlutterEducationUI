import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.screenHeight,
    required this.buttonLabel,
    required this.onPressed,
  });

  final double screenHeight;
  final String buttonLabel;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        top: 0.04 * screenHeight,
        left: 20,
        right: 20,
      ), // add some side padding
      child: SizedBox(
        width: double.infinity,
        height: 50,
        child: ElevatedButton(
          onPressed: onPressed,
          style: ElevatedButton.styleFrom(
            backgroundColor:
                Theme.of(context).colorScheme.secondary, // background color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25), // rounded edges
            ),
          ),
          child: Text(
            buttonLabel,
            style: TextStyle(
              color: Theme.of(context).colorScheme.onTertiary,
            ),
          ),
        ),
      ),
    );
  }
}
