import 'package:flutter/material.dart';
import 'package:flutter_application_pak_quran_institute/Screens/sign_in.dart';
import 'package:flutter_application_pak_quran_institute/Screens/sign_up.dart';
import 'package:flutter_application_pak_quran_institute/Screens/video_call_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    // final orientation = MediaQuery.of(context).orientation;

    return SafeArea(
      child: Scaffold(
        // backgroundColor: Colors.cyan,
        body: Stack(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 50,),
              child: Image.asset('assets/images/pak_quran_logo.jpg'),
            ),
            Container(
            margin: EdgeInsets.only(top: 450),
            // alignment: Alignment.bottomCenter
            height: 350,
            width: double.infinity,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              ),
              color: Colors.black,
            ),
            child:  Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(height: 40,),
                const Text('Welcome', style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  fontStyle: FontStyle.normal,
                  color: Colors.white
                ),),
                const Text('Get started with your account', style: TextStyle(
                  fontSize: 15,
                  // fontWeight: FontWeight.w200,
                  color: Colors.white
                ),),
                const SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> VideoCallScreen()));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: const BoxDecoration(
                      color: Colors.green,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Center(child: Text('Join Meeting', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                    ),)),
                  ),
                ),
                const SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignUpScreen()));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Center(child: Text('Sign Up', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                    ),)),
                  ),
                ),
                const SizedBox(height: 20,),
                GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => SignInScreen()));
                  },
                  child: Container(
                    width: double.infinity,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey.shade800,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: const Center(child: Text('Sign In', style: TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.w500,
                      color: Colors.white
                    ),)),
                  ),
                ),
              ],
            ),
          ),]
        ),
      ),
    );
  }
}
