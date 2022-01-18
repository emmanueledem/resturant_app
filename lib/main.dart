import 'package:animated_splash_screen/animated_splash_screen.dart';
import "package:flutter/material.dart";
import 'package:resturant_app/screens/splash.dart';
import 'package:resturant_app/screens/welcome_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: AnimatedSplashScreen(
        splash: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image(
                width: 110,
                image: AssetImage('assets/images/1.png'),
              ),
            ],
          ),
        ),
        backgroundColor: Colors.pink,
        duration: 3000,
        splashTransition: SplashTransition.rotationTransition,
        nextScreen: Welcome_screen(),
      ),
    );
  }
}
