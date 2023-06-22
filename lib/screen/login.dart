import 'package:flutter/material.dart';
import 'package:zoom/resources/auth_methods.dart';
import 'package:zoom/widegts/custom_button.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final AuthMethods _authMathods = new AuthMethods();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text(
                "Start or Join a meeting",
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 50.0),
                child: Image.asset(
                  'assets/images/onboarding.jpg',
                  scale: 2,
                ),
              ),
              Custom_button(
                text: "login",
                onpress: () async {
                  print("object");
                  bool res = await _authMathods.signInWithGoogle(context);
                  if (res) {
                    print("object123");
                    Navigator.pushNamed(context, '/home');
                  } else {
                    print('object');
                  }
                },
              )
            ]),
      ),
    );
  }
}
