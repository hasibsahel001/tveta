
import 'package:flutter/material.dart';
import 'package:tveta/other_pages/splash_screen.dart';

void main() {
  runApp(
      MyApp()
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
      ),
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}
