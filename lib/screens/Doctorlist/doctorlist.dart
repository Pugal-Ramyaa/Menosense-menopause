import 'package:flutter/material.dart';
import 'components/body.dart';

class DoctorList extends StatelessWidget {
  static String routeName = "/DoctorList";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        
        title:Center(
          child: Text(
            "Doctor",
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ), 
      ),
      body: Body(),
    );
  }
}
