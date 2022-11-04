import 'package:flutter/material.dart';
import 'package:flutter_signin_button/button_list.dart';
import 'package:flutter_signin_button/button_view.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/cake.jpg'),
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 400,
              width: double.infinity,
              child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                const Text('Sign in to continue'),
                Text(
                  'Food Chai',
                  style: TextStyle(fontSize: 50, color: Colors.white, shadows: [
                    BoxShadow(
                        blurRadius: 5,
                        color: Colors.green.shade900,
                        offset: const Offset(3, 3)),
                  ]),
                ),
                Column(
                  children: [
                  SignInButton(
                    Buttons.Google,
                    text: "Sign in with Google",
                    onPressed: () {},
                  ),
                ]),
                Column(
                  children: [
                    Text("All right reserved AB")
                  ],
                )
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
