
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';


import 'components/my_button.dart';
import 'components/my_textfield.dart';
import 'components/square_tile.dart';
import 'forgot_page.dart';

class LoginPage extends StatelessWidget {
   LoginPage({Key? key}) : super(key: key);

  //text editing controllers

  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  // sign in user  method
   void signUserIn()async{
     await FirebaseAuth.instance.signInWithEmailAndPassword(
       email:emailController.text,
       password:passwordController.text,
     );

   }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                //logo
                SizedBox(height: 50,),

                const Icon(Icons.lock,
                size: 100),

                SizedBox(height: 50),

                //welcom back, you've been missed
                Text('Welcome back you\'ve been missed!',

                style: TextStyle(
                  color: Colors.grey,
                  fontSize :16,
                ),
                ),
                const SizedBox(height: 25),

                //email textfield
                MyTextField(
                  controller: emailController,
                  hindText: "Email",
                  obscureText: false,
                ),
                SizedBox(height: 13),


                //password textfield
                MyTextField(
                  controller: passwordController,
                  hindText: 'password',
                  obscureText: true,
                ),


                //forgot passord
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 25.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return ForgotPasswordPage();
                          },),);
                        },
                        child: Text('Forgot Password?',
                        style: TextStyle(color: Colors.black,),),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10),

                //sign in button
                MyButton(
                    onTap:  signUserIn,
                ),
                const SizedBox(height: 50),



                //or continue with

                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: [
                      Expanded(
                          child: Divider(
                            thickness: 0.5,
                          ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Text('Or continue with'),
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 50),
                //google +apple singn in button
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SqureTile(imagePath: 'assets/google.jpg',),
                    //const SizedBox(width: 10,),
                    //SqureTile(imagePath: 'assets/apple.png',),
                  ],
                ),

                //not a member? register
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('Note a member?',style: TextStyle(color: Colors.grey[700]),),
                  SizedBox(width: 4,),
                  Text("Register now",
                    style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
