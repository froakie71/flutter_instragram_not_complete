import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:instragram_flutter/screens/login_screen.dart';
import 'package:instragram_flutter/screens/signup_screen.dart';
import 'package:instragram_flutter/utils/colors.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  if (kIsWeb) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyD1T97UlW8JaoFRroV7DSKlSo4Cq_wuxFQ",
          appId: "1:487306921377:web:56f911ec2a9951ed9477e0",
          messagingSenderId: "487306921377",
          projectId: "instragram-tut-5ce38",
          storageBucket: "instragram-tut-5ce38.appspot.com"),
    );
  } else {
    await Firebase.initializeApp();
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Instragram Clone',
      theme: ThemeData.dark()
          .copyWith(scaffoldBackgroundColor: mobileBackgroundColor),
      // home: const ResponsiveLayout(
      //   webScreenLayout: WebScreenLayout(),
      //   mobileScreenLayout: MobileScreenLayout(),
      // ),
      home: SignupScreen(),
    );
  }
}
