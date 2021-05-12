import 'package:flutter/material.dart';
import './components/body.dart';

class SignUpScreen extends StatelessWidget {
  static String routeName = "/sign-up";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Register"),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
