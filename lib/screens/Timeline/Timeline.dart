
import 'package:flutter/material.dart';
import 'package:menopausal_app/screens/Timeline/components/body.dart';

class Timeline extends StatelessWidget {
  static String routeName = "/Timeline";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Timeline",
          style: TextStyle(color: Color(0xFF888888), fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
