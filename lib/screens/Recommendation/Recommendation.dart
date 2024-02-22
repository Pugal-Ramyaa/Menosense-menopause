// sign_up_screen.dart

import 'package:flutter/material.dart';
import 'package:menopausal_app/screens/Recommendation/components/body.dart';

class Recommendation extends StatelessWidget {
  static String routeName = "/Recommendation";
  final List<Map<String, dynamic>> imageList = [
    {
      'id':'1',
      'severity': 'LifeStyle Modification',
      'imagePath': 'Assets/Images/lifestyle.png',
      'showImage': true,
    },
    {
      'id':'2',
      'severity': 'T2DM - Metformin 500 mg. \nTake one tablet in the morning. \nConsult a doctor',
      'imagePath': 'Assets/Images/tablet.png',
      'showImage': true,
    },
    {
      'id':'3',
      'severity': 'Less Salt Intake',
      'imagePath': 'Assets/Images/salt.png',
      'showImage': true,
    },
    {
      'id':'4',
      'severity': 'Amlong 5mg. \nTake one tablet in the morning. \nConsult a doctor',
      'imagePath': 'Assets/Images/tablet.png',
      'showImage': true,
    },
    {
      'id':'5',
      'severity': 'HyperTension - Consult a doctor',
      'imagePath': 'Assets/Images/dr.png',
      'showImage': true,
    },
    {
      'id':'6',
      'severity': 'Regular Exercise',
      'imagePath': 'Assets/Images/exer.png',
      'showImage': true,
    },
    {
      'id':'7',
      'severity': 'Nutrition rich food',
      'imagePath': 'Assets/Images/nutrition.png',
      'showImage': true,
    },
    {
      'id':'8',
      'severity': 'Labatalol 100mg . \nTake one tablet three times a day \nConsult a doctor',
      'imagePath': 'Assets/Images/tablet.png',
      'showImage': true,
    },
    {
      'id':'9',
      'severity': 'ThyroNom 0.25mg. \nTake one tablet in the morning \nConsult a doctor',
      'imagePath': 'Assets/Images/tablet.png',
      'showImage': true,
    },
    {
      'id':'10',
      'severity': 'Oral Hypoglycemic. \nConsult a doctor',
      'imagePath': 'Assets/Images/dr.png',
      'showImage': true,
    },
    {
      'id':'11',
      'severity': 'Diet Modification',
      'imagePath': 'Assets/Images/diet.png',
      'showImage': true,
    },
    {
      'id':'12',
      'severity': 'Oral Anti Hypertative drugs. \nConsult a doctor',
      'imagePath': 'Assets/Images/tablet.png',
      'showImage': true,
    },
    {
      'id':'13',
      'severity': 'Oral Anti HyperTension Drugs. \nConsult a doctor',
      'imagePath': 'Assets/Images/tablet.png',
      'showImage': true,
    },
    {
      'id':'14',
      'severity': 'High Fibre Diet.',
      'imagePath': 'Assets/Images/fibre.png',
      'showImage': true,
    },
    {
      'id':'15',
      'severity': 'Hypothyroidism-Oral thyroid agents. \nConsult a doctor',
      'imagePath': 'Assets/Images/tablet.png',
      'showImage': true,
    },
    // Add more maps for other images as needed
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Recommendation",
          style: TextStyle(color: Color(0xFF888888), fontSize: 18),
        ),
        centerTitle: true,
      ),
      body: Body(imageList: imageList),
    );
  }
}
