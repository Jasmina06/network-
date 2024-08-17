import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:network_cloud/pages/pm_manager_page.dart';
import 'package:network_cloud/pages/sub_const_pm.dart';
import 'package:network_cloud/widgets/auth_gradient_button.dart';  // Corrected import here

import '../widgets/auh_gradient_button.dart';
import '../widgets/auth_field.dart';
import 'home_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();

  void _signIn() {
    if (_emailController.text == 'test@example.com' && _passwordController.text == 'password') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => SubConstPm()),
      );
    } else if (_emailController.text == 'Jasmina' && _passwordController.text == 'password') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => PmManagerPage() ),
      );
    } else if (_emailController.text == 'Jasmina1' && _passwordController.text == 'password') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => HomePage()  ),
      );
      // ScaffoldMessenger.of(context).showSnackBar(
      //   SnackBar(content: Text('Invalid credentials')),
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sign In",
                style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              AuthField(
                hintText: "Email",
                controller: _emailController,
              ),
              SizedBox(height: 10),
              AuthField(
                hintText: "Password",
                controller: _passwordController,
              ),
              SizedBox(height: 25),
              AuthGradientButton(
                onPressed: _signIn,
                text: 'Sign In',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
