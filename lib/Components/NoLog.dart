import 'package:flutter/material.dart';
import 'package:menopausal_app/Components/default_button.dart';
import 'package:menopausal_app/screens/Symptoms/Symptoms.dart';
class NoLog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'Assets/Images/nolog.png', // Replace with your image path
            height: 400,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0), // Adjust padding as needed // Adjust padding as needed
            child: Text(
              "Oops...You haven't logged your symptoms...",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),

          SizedBox(height: 20)
        ],
      ),
    );
  }
}
