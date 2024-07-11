import 'package:flutter/material.dart';
import 'package:flutter_application_pak_quran_institute/Screens/welcome_screen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';


class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Simulate a delay to show the splash screen
    Future.delayed(Duration(seconds: 8), () {
      // Navigate to the next screen after the splash screen
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => WelcomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Set your desired background color
      body: Stack(
        children: [
          Center(child: Image.asset('assets/images/pak_quran_logo.jpg')),
          const Center(
          child: SpinKitFadingCircle(
            color: Colors.green, // Set your desired spinner color
            size: 50.0,
          ),
        ),]
      ),
    );
  }
}
