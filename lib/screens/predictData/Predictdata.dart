import 'package:flutter/material.dart';
import 'components/body.dart';

class Prediction extends StatelessWidget {
  static String routeName = "/Prediction";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title:Center(
          child: Text(
            "Prediction",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ), 
      ),
      body: Body(),
    );
  }
}
