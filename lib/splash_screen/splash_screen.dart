import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 50, 153, 237),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(30),
              child: Container(
                height: 175,
                width: 175,
                decoration: BoxDecoration(
                  color: Colors.blue.shade500,
                  boxShadow: const [
                    BoxShadow(
                      color: Colors.white,
                      spreadRadius: 3,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: const Image(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    'lib/assets/icon.jpg',
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const SpinKitWave(
              color: Colors.white,
              size: 50.0,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              'Wheather app',
              style: TextStyle(
                  fontSize: 25,
                  color: Colors.white,
                  fontWeight: FontWeight.bold),
            )
          ],
        ),
      ),
    );
  }
}
