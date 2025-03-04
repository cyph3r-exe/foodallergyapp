import 'package:flutter/material.dart';
import 'package:foodallergy/components/buttons.dart';
import 'package:foodallergy/components/textentry.dart';

class LoginSignUp extends StatefulWidget {
  const LoginSignUp({super.key});

  @override
  State<LoginSignUp> createState() => _LoginSignUpState();
}

class _LoginSignUpState extends State<LoginSignUp> {

    void onPressed () {

    Navigator.pushNamed(context, '/home');

  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(20),
            child: Text(
              'Login',
              style: Theme.of(context).textTheme.headlineLarge,
            ),
          ),
          Container(
              padding: EdgeInsets.all(20),
              child: Column(
                children: [
                  textentry(context, 'Email', false, TextEditingController(),
                      Icons.email),
                  textentry(context, 'Password', true, TextEditingController(),
                      Icons.lock),
                ],
              )
          ),
          commonbutton(context, 'Login', onPressed),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Don\'t have an account?'),
              TextButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signup');
                },
                child: Text('Sign Up'),
              ),
            ],
          ),
        ],
      )),
    );
  }
}
