import 'dart:async';

import 'package:flutter/material.dart';
import 'package:synergy/screens/login.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    super.initState();
    //Navigate to the home screen after 10 seconds

    Timer(const Duration(seconds: 10), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute<void>(
          builder: (BuildContext context) => const Login(),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/Splashscreen.png"),
              fit: BoxFit.cover,
            ),
          ),

          child: 
          CircularProgressIndicator(
            color: Color.fromARGB(255, 207, 196, 177),
          )),
    );

    //add a loading indicator
  }
}
