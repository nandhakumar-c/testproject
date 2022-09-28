import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:testproject/google_sign_in.dart';

import 'GoogleSignIn/new.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const Text("Google Login"),
        backgroundColor: Colors.green,
      ),
      body: Container(
        width: size.width,
        height: size.height,
        padding: EdgeInsets.only(
            left: 20,
            right: 20,
            top: size.height * 0.2,
            bottom: size.height * 0.5),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text("Hello, \nGoogle sign in",
                style: TextStyle(fontSize: 30)),
            GestureDetector(
                onTap: () {
                  AuthService().signInWithGoogle();
                },
                child: const Image(
                    width: 100, image: AssetImage('assets/google.png'))),
          ],
        ),
      ),
    );
  }
}


// class LoginPage extends StatefulWidget {
//   const LoginPage({Key? key}) : super(key: key);

//   @override
//   State<LoginPage> createState() => _LoginPageState();
// }

// class _LoginPageState extends State<LoginPage> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("Title"),
//       ),
//       body: Center(
//           child: ElevatedButton(
//         onPressed: () {
//           // final provider =
//           //     Provider.of<GoogleSignInProvider>(context, listen: false);
//           // provider.googleLogin();
//           AuthService().signInWithGoogle();
//         },
//         child: Text("Sign in With Google"),
//       )),
//     );
//   }
// }
