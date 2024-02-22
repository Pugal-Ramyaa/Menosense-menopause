// sign_up_screen.dart

import 'package:flutter/material.dart';
import 'package:menopausal_app/screens/Vitals/components/body.dart';

class Vitals extends StatelessWidget {
  static String routeName = "/Vitals";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Vitals",
          style: TextStyle(color: Color(0xFF888888), fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
