// sign_up_screen.dart

import 'package:flutter/material.dart';
import 'package:menopausal_app/screens/Report/components/body.dart';

class Report extends StatelessWidget {
  static String routeName = "/Report";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Report",
          style: TextStyle(color: Color(0xFF888888), fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
