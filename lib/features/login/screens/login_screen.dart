import 'package:flutter/material.dart';
import 'package:learning_platform/features/login/components/login_form.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  String? email = "";
  String? password = "";

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.close),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.001),
                child: Image.asset(
                  "assets/images/studying3.png",
                  height: screenHeight * 0.15,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: screenHeight * 0.02),
                child: Text(
                  "Log In",
                  style: TextStyle(
                    color: Theme.of(context).colorScheme.primary,
                    fontSize: 25,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: screenHeight * 0.02,
                  left: screenHeight * 0.05,
                  right: screenHeight * 0.05,
                ),
                child: Text(
                  "Welcome Back! Login and continue the learning journey",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color:
                        Theme.of(context).colorScheme.primary.withOpacity(0.7),
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              TextFieldLogin(
                screenHeight: screenHeight,
                labelText: "Username",
                hintText: "Username",
              ),
              TextFieldLogin(
                screenHeight: screenHeight,
                labelText: "Password",
                hintText: "Password",
                isPassword: true,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
