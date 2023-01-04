
import 'package:flutter/material.dart';
class MyTextField extends StatelessWidget {
  final controller;
  final String hindText;
  final obscureText;
  const MyTextField({super.key,
    required this.controller,
    required this.hindText,
    required this.obscureText});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 25),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.black),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey),
          ),
          fillColor: Colors.grey,
          filled: true,
          hintText: hindText,


        ),

      ),
    );
  }
}
