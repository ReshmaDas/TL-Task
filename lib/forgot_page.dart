import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

import 'components/my_textfield.dart';
class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  State<ForgotPasswordPage> createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final emailController = TextEditingController();

  @override
  void dispose() {
    emailController.dispose();
    super.dispose();
  }
  Future PasswordReset()async{
    try{
      await FirebaseAuth.instance
          .sendPasswordResetEmail(email: emailController.text.trim());
      showDialog(context: context, builder: (context){
        return AlertDialog(
          content: Text('Password Reset link sent! check your emai'),
        );
      });

    }on FirebaseAuthException catch (e){
      print(e);
      showDialog(
          context: context,
          builder: (context){
        return AlertDialog(
          content: Text(e.message.toString()),
        );
      });
    }
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        backgroundColor: Colors.blue,
        elevation: 0,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        children: [
          Text('Enter your valid email id'),
          SizedBox(height: 20),

          MyTextField(
            controller: emailController,
            hindText: "Email",
            obscureText: false,
          ),
          SizedBox(height: 13),
          MaterialButton(onPressed: PasswordReset,
            child: Text('Reset Password'),
            color: Colors.blue,
          )

        ],
      ),
    );
  }
}
