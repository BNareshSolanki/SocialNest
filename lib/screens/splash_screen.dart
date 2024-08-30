import 'dart:async';

import 'package:besocial/screens/screens.dart';
import 'package:flutter/material.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();

    Timer(const Duration(seconds: 2), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => const NavScreen()));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                child: const Text(
                  'SocialNest',
                  style: TextStyle(
                    fontSize: 75,
                    // letterSpacing: -1,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.circle,
                    size: 8,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Connect',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.circle,
                    size: 8,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Discover',
                    style: TextStyle(fontSize: 20),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Icon(
                    Icons.circle,
                    size: 8,
                  ),
                  SizedBox(
                    width: 2,
                  ),
                  Text(
                    'Explore',
                    style: TextStyle(fontSize: 20),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
