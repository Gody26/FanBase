import 'dart:async';
import 'package:fan_base/screens/login.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  //splashScreen for how long it will take and to allocate to which method
void initState() {
  super.initState();
  Timer(const Duration (seconds: 3), () { 
    Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ((context) => const Login())));
  });
}
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Column(
          
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset('assets/images/bmw m4 svg.jpg'),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}