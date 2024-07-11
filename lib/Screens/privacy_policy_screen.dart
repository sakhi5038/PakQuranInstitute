import 'package:flutter/material.dart';
import 'package:flutter_application_pak_quran_institute/Screens/sign_up.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text('Privacy Policy & Terms of Service', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500)),
        ),
        body: Padding(
          padding: EdgeInsets.only(top: 30, left: 10, right: 10,),
          child: Stack(
            children: [
              const Text('Introduction Welcome to Pak Quran Institute. This Privacy Policy explains how we collect, use, share, and protect information from and about users of our mobile application and related services. By using our Services, you agree to the terms outlined in this Privacy Policy. Please read it carefully.'),
              const Padding(
                padding: EdgeInsets.only(top: 130),
                child: Text('Information We Collect'),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 160),
                child: Text('Account Information: When you register for an account, we may collect personal information such as your name, email address, and profile picture.Meeting Information: We collect information related to the meetings you host or join, including meeting ID, participants names, video, and audio data.Device Information: We may collect information about the devices you use to access our Services, including device type, operating system, and unique device identifiers.Usage Data: We collect information about how you use our Services, including log files, error logs, and feature usage patterns.'),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 400),
                child: Text('Updates to This Privacy Policy\nWe may update this Privacy Policy to reflect changes in our practices. We will notify users of any material changes.\nContact Us\n If you have questions or concerns about this Privacy Policy, please contact us at [info@pakquraninstitute.com].'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 600),
                child: GestureDetector(
                  onTap: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> SignUpScreen()));
                  },
                  child: Container(
                      height: 50,
                      decoration: const BoxDecoration(
                        color: Colors.green,
                        borderRadius: BorderRadius.all(Radius.circular(20))
                      ),
                      child: const Center(child: Text('Agree & Continue', style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.w500,
                        color: Colors.white
                      ),)),
                    ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}