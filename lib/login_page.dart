import 'package:flutter/material.dart';
import 'package:polres/app_styles.dart';
import 'package:polres/components/my_button.dart';
import 'package:polres/components/my_textfield.dart';
import 'package:polres/components/square_tile.dart';

class LoginPage extends StatelessWidget {
  static const routeLogin = '/login';

  //  Aditya edit disini

  // Clue variable controller

  // End edit

  // sign user in method
  void signUserIn() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 50),

              // logo
              Text('POLRES', style: TextStyle(color: kBlue, fontSize: 50)),

              const SizedBox(height: 50),

              // welcome back, you've been missed!
              //  Aditya edit disini

              // Text welcomback

              // End Edit

              const SizedBox(height: 25),

              // username textfield

              //  Aditya edit disini

              // Clue field controller username dan password

              //  End of edit

              // forgot password?
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Password?',
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 25),

              // sign in button
              MyButton(
                onTap: signUserIn,
              ),

              const SizedBox(height: 50),

              // not a member? register now
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Not a member?',
                    style: TextStyle(color: Colors.grey[700]),
                  ),
                  const SizedBox(width: 4),
                  const Text(
                    'Register now',
                    style: TextStyle(
                      color: Colors.blue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
