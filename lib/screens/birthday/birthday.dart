import "package:flutter/material.dart";
import 'components/body.dart';
class Birthday extends StatelessWidget {
  static String routeName = "/birthday";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Image.asset(
            "Assets/Images/smalllogo.png",
            height: 80, // Adjust the height as needed
          ),
        ),
      ),
      body: Body(),
    );
  }
}