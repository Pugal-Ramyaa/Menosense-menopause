import 'package:flutter/material.dart';
import "package:menopausal_app/Components/default_button.dart";
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
          child: Center(
        child: RoundedSquareBox(),
      ),
    );
  }
}
class RoundedSquareBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 400.0,
      height:400.0,
      padding: EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.0),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3),
          ),
        ],
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Doctor Name: John Doe',
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Doctor ID: 123456',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Speciality: Cardiologist',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Hospital: XYZ Hospital',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Hospital Address: 123 Street, City, Country',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Contact No: +1234567890',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 10.0),
                Text(
                  'Email Address: john.doe@example.com',
                  style: TextStyle(
                    fontSize: 16.0,
                  ),
                ),
                SizedBox(height: 20.0),
                DefaultButton(
                  text: "Call Doctor",
                  press: () {
                    
                  },
                ),
              ],
            ),
          ),
          SizedBox(width: 20.0),
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage('Assets/Images/profile_pic.jpg'), // Replace with your image path
          ),
        ],
      ),
    );
  }
}
