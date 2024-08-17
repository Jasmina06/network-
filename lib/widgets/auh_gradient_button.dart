import 'package:flutter/material.dart';

class AuthGradientButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;

  const AuthGradientButton({
    Key? key,
    required this.onPressed,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.pink,
        padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
      ),
      child: Text("Sign In ",style: TextStyle(fontSize: 17,fontWeight:FontWeight.bold ),),
    );
  }
}
