import 'package:flutter/material.dart';

import '../widgets/sign_in_button.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  static const String routeName = '/login';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            left: 16.0,
            right: 16.0,
            bottom: 20.0,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Row(),
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Image(
                      image: AssetImage("assets/mytest.png"),
                      height: 200.0,
                    ),
                    SizedBox(
                      height: 100,
                    ),
                    GoogleSignInButton(
                        title: 'Sign in with Google',
                        image: 'assets/google_logo.png'),
                    GoogleSignInButton(
                        title: 'Sign in with Facebook',
                        image: 'assets/facebook.jpeg'),
                    GoogleSignInButton(
                        title: 'Sign in with Email', image: 'assets/email.png'),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
