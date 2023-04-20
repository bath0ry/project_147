import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:google_fonts/google_fonts.dart';
import 'dart:async';

import 'package:project_147/home/home_page.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 6), () {
      Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (BuildContext context) => MyHomePage()),
          (route) => false);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 9, 12, 143),
      body: Stack(children: [
        Container(
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/imagemObra.jpg'))),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Sua Parte Diária',
                  style: TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255),
                      fontSize: 45,
                      fontWeight: FontWeight.w900,
                      shadows: [
                        Shadow(
                            offset: Offset(1, 6),
                            blurRadius: 1,
                            color: Color.fromARGB(255, 86, 86, 87))
                      ],
                      fontStyle: FontStyle.italic),
                ),
                SizedBox(
                  height: 30,
                ),
                CircularProgressIndicator(
                  color: Colors.white,
                  strokeWidth: 10,
                ),
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
