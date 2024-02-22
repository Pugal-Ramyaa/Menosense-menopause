import 'package:flutter/material.dart';
import 'package:menopausal_app/Components/default_button.dart';
import 'package:menopausal_app/screens/Symptoms/Symptoms.dart';
import 'package:menopausal_app/screens/predictData/Predictdata.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(20.0), // Add padding to all sides
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'Assets/Images/Think.png', // Replace with your image path
              width: 400,
              height: 400,
            ),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Text(
                "Hmm... Looks like you have no existing data...",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 20),
            DefaultButton(
              text: "Enter new data",
              press: () {
                Navigator.pushNamed(context,Prediction.routeName);
              },
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
