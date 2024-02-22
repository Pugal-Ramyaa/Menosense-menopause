import 'package:flutter/material.dart';
import 'components/body.dart';

class Symptoms extends StatelessWidget {
  static String routeName = "/Symptoms";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title:Center(
          child: Text(
            "Daily Log",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ), 
      ),
      body: Body(),
    );
  }
}
