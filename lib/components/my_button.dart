import 'package:flutter/material.dart';
class MyButton extends StatelessWidget {
  final Function()? onTap;
  const MyButton({Key? key,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.all(25),
        margin: EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
            color: Colors.blue,
          borderRadius: BorderRadius.circular(8),
        ),

        child: const Center(
          child: Text('Sign in',
          style:  TextStyle(color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 16,),),
        ),
      ),
    );
  }
}
