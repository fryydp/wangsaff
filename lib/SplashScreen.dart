import 'package:flutter/material.dart';
import 'main.dart'; // Pastikan untuk mengimpor file main.dart

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Menggunakan Future.delayed untuk menunggu beberapa detik
    Future.delayed(Duration(seconds: 3), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (context) => MyApp()),
      );
    });

    return Scaffold(
      backgroundColor: Colors.green,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.home,
              size: 100,
              color: Colors.white,
            ),
            SizedBox(height: 20),
            Text(
              'Welcome to Wangsaff',
              style: TextStyle(
                color: Colors.white,
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}