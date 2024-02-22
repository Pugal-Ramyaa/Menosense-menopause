import 'package:flutter/material.dart';
import 'components/body.dart';

class Doctor extends StatelessWidget {
  static String routeName = "/Doctor";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text("Doctor",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          centerTitle: true,
        ), 
      body: Body(),
    );
  }
}
