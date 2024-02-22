import 'package:flutter/material.dart';
import 'package:menopausal_app/Components/default_button.dart';
import 'package:menopausal_app/screens/Symptoms/Symptoms.dart';
class Oopslog extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
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
            padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0), // Adjust padding as needed // Adjust padding as needed
            child: Text(
              "Hmm... Looks like you have not logged your symptoms in yet...",
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          SizedBox(height: 20),
          DefaultButton(
            text:"Log symptoms...",
            press:() {
              Navigator.pushNamed(context,Symptoms.routeName );
            },
          ),

          SizedBox(height: 20)
        ],
      ),
    );
  }
}
