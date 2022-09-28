import 'package:flutter/material.dart';
import 'package:testproject/LoginPage.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart';
import 'package:testproject/google_sign_in.dart';

import 'GoogleSignIn/new.dart';

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      debugShowCheckedModeBanner: false,
      home: AuthService().handleAuthState(),
    );
  }
}

// Future main() async {
//   WidgetsFlutterBinding.ensureInitialized();
//   await Firebase.initializeApp();
//   runApp(PracticeApp());
// }

// class PracticeApp extends StatefulWidget {
//   const PracticeApp({Key? key}) : super(key: key);

//   @override
//   State<PracticeApp> createState() => _PracticeAppState();
// }

// class _PracticeAppState extends State<PracticeApp> {
//   @override
//   Widget build(BuildContext context) => ChangeNotifierProvider(
//       create: (context) => GoogleSignInProvider(),
//       child: MaterialApp(
//         home: LoginPage(),
//       ));
// }
