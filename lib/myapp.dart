import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:signup_project/home_page.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations(
        [DeviceOrientation.portraitUp]); // bloqueia rotação celular
    return MaterialApp(
      home: const Center(
        child: SignInPage(),
      ),
      theme: ThemeData(
        scaffoldBackgroundColor: const Color.fromARGB(255, 255, 255, 255),
      ),
    );
  }
}
