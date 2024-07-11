import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Sign In', style: TextStyle(fontSize: 20, fontWeight: FontWeight.w500),),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          const Padding(
            padding: const EdgeInsets.only(left: 22,),
            child: const Text('ENTER YOUR EMAIL ADDRESS'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              height: 115,
              child: Stack(
                children: [
                  TextField(
                  controller: _emailController,
                  decoration: const InputDecoration(
                    contentPadding: EdgeInsets.only(left: 10, top: 20),
                    border: InputBorder.none,
                    labelText: 'Email',
                    labelStyle: TextStyle(fontWeight: FontWeight.w500)
                  ),
                  
                ),
                const Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Divider(
                    thickness: 0.2,
                    endIndent: 1.7,
                    color: Colors.black,
                  ),
                ),
                 Padding(
                   padding: const EdgeInsets.only(top: 60),
                   child: TextField(
                    controller: _passwordController,
                    decoration: const InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10, top: 20),
                      border: InputBorder.none,
                      labelText: 'Password',
                      labelStyle: TextStyle(
                        fontWeight: FontWeight.w500
                      )
                    ),
                                   ),
                 ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 50,
              decoration: const BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.all(Radius.circular(20))
              ),
              child: const Center(child: Text('Sign in', style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w500,
                color: Colors.white
              ),)),
            ),
          ),
          const SizedBox(height: 10,),
          const Padding(
            padding:  EdgeInsets.only(left: 30),
            child: Stack(
              children: [
                Text('Forgot Password?', style: TextStyle(
                  color: Colors.green,
                  fontWeight: FontWeight.w500
                ),),
              ],
            ),
          ),
          const SizedBox(height: 80,),
          const Padding(
            padding:  EdgeInsets.only(left: 22,),
            child:  Text('OTHER SIGN IN METHODS'),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/google.png'),
                  const SizedBox(width: 10),
                  const Text('Continue with Google', style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),)
                ],
              ),
            ),
          ),
          SizedBox(height: 10,),
           Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset('assets/images/facebook.png'),
                  const SizedBox(width: 10),
                  const Text('Continue with Facebook', style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),)
                ],
              ),
            ),
          ),
           SizedBox(height: 10,),
           Padding(
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey.shade300,
                borderRadius: BorderRadius.all(Radius.circular(10))
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Image.asset('assets/images/facebook.png'),
                  Icon(Icons.phone),
                  SizedBox(width: 10),
                  Text('Continue with Number', style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w500
                  ),)
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}