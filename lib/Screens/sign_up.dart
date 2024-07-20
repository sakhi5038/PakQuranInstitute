import 'package:flutter_application_pak_quran_institute/Screens/meeting_screen.dart';
import 'package:flutter_application_pak_quran_institute/Screens/privacy_policy_screen.dart';

import '../Export/export_file.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final TextEditingController _emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          'Sign Up',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: EdgeInsets.only(
              left: 22,
            ),
            child: Text('ENTER YOUR EMAIL ADDRESS'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              height: 50,
              child: TextField(
                controller: _emailController,
                decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10, top: 20),
                    border: InputBorder.none,
                    labelText: 'Email'),
                style: const TextStyle(fontWeight: FontWeight.w500),
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: GestureDetector(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MeetingScreen()));
              },
              child: Container(
                height: 50,
                decoration: const BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: const Center(
                    child: Text(
                  'Continue',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                      color: Colors.white),
                )),
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Stack(
              children: [
                const Text('By proceeding, I agree to the'),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const PrivacyPolicyScreen()));
                  },
                  child: const Padding(
                    padding: EdgeInsets.only(left: 190),
                    child: Text(
                      "Pak Quran's Privacy",
                      style: TextStyle(
                          color: Colors.green, fontWeight: FontWeight.w500),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20),
                  child: Text(
                    'Statement',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w500),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 75),
                  child: Text('and'),
                ),
                const Padding(
                  padding: EdgeInsets.only(top: 20, left: 105),
                  child: Text(
                    'Terms of Service.',
                    style: TextStyle(
                        color: Colors.green, fontWeight: FontWeight.w500),
                  ),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 80,
          ),
          const Padding(
            padding: EdgeInsets.only(
              left: 22,
            ),
            child: Text('OR SELECT YOUR SIGN UP METHOD'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/google.png'),
                  const SizedBox(width: 10),
                  const Text(
                    'Continue with Google',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/facebook.png'),
                  const SizedBox(width: 10),
                  const Text(
                    'Continue with Facebook',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                  color: Colors.grey.shade300,
                  borderRadius: const BorderRadius.all(Radius.circular(10))),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.asset('assets/images/facebook.png'),
                  Icon(Icons.phone),
                  SizedBox(width: 10),
                  Text(
                    'Continue with Number',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
