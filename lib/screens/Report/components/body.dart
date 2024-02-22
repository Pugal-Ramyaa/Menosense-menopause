import 'package:flutter/material.dart';
import 'package:menopausal_app/constants.dart';

import '../../../Components/default_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Container(
            width: 630.0,
            height: 891.0, // A4 height in millimeters
            child: Padding(
              padding: EdgeInsets.all(20.0), // Padding on all 4 sides
              child: DoctorReport(),
            ),
            decoration: BoxDecoration(
              color: Colors.white, // Background color white
              borderRadius: BorderRadius.all(Radius.circular(10.0)), // Rounded corners
            ),
            margin: EdgeInsets.all(20.0), // Margins around the container
          ),
        ),
      ),
    );
  }
}

class DoctorReport extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Logo widget
              Image.asset(
                'Assets/Images/logo.png', // Replace with your logo asset path
                height: 50,
              ),
              // Report text
              Text(
                'Report',
                style: TextStyle(
                  fontSize: 20.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              // Date text
              Text(
                'As on date: January 1, 2024',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Row(
            children: [
              Text(
                'Name: ',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'John Doe',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(width: 20.0), // Add spacing between Name and Age
              Text(
                'Age: ',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '30',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Text(
            'Doctor on Consult: Doctor X',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          
          SizedBox(height: 10.0),
          Text(
            'Last menstrual period: January 1, 2024',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          SizedBox(height: 10.0),
          Row(
            children: [
              Text(
                'Height: ',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '170 cm',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
              SizedBox(width: 20.0), // Add spacing between Height and Weight
              Text(
                'Weight: ',
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                '65 kg',
                style: TextStyle(
                  fontSize: 16.0,
                ),
              ),
            ],
          ),
          SizedBox(height: 10.0),
          Text(
            'Menstrual Irregularity',
            style: TextStyle(
              fontSize: 16.0,
            ),
          ),
          
          SizedBox(height: 20.0),
          // New boxes
          Row(
            children: [
              Expanded(
                child: Container(
                  color: kPrimaryColor, // Background color red
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Medical History - Title',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // Text color white
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Diabetes',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white, // Text color white
                              ),
                            ),
                            Text(
                              'Thyroid problems',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white, // Text color white
                              ),
                            ),
                            Text(
                              'PCOS',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white, // Text color white
                              ),
                            ),
                            Text(
                              'Hypertension',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white, // Text color white
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20.0),
              Expanded(
                child: Container(
                  color: kPrimaryColor, // Background color red
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Major Symptoms - Title',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white, // Text color white
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Fatigue',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white, // Text color white
                              ),
                            ),
                            Text(
                              'Insomnia',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white, // Text color white
                              ),
                            ),
                            Text(
                              'Mood Swings',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white, // Text color white
                              ),
                            ),
                            Text(
                              'Sweats',
                              style: TextStyle(
                                fontSize: 16.0,
                                color: Colors.white, // Text color white
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 20.0),
          // New rectangular box
          // New rectangular box
          Row(
            children: [
              Expanded(
                child: Container( // Background color red
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Medical History - Title',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black, // Text color white
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                        'HB',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black, // Text color white
                        ),
                      ),
                      Text(
                        'FSH',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black, // Text color white
                        ),
                      ),
                      Text(
                        'BP',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black, // Text color white
                        ),
                      ),
                      Text(
                        'Prolactin',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black, // Text color white
                        ),
                      ),
                      Text(
                        'Estrogen',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black, // Text color white
                        ),
                      ),
                      Text(
                        'LH',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black, // Text color white
                        ),
                      ),
                      Text(
                        'Progesterone',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black, // Text color white
                        ),
                      ),
                    
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(width: 20.0),
              Expanded(
                child: Container(// Background color red
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Major Symptoms - Title',
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black, // Text color white
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             Text(
                        'Vitamin D',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black, // Text color white
                        ),
                      ),
                      Text(
                        'FT3',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black, // Text color white
                        ),
                      ),
                      Text(
                        'FT4',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black, // Text color white
                        ),
                      ),
                      Text(
                        'GnRH',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black, // Text color white
                        ),
                      ),
                      Text(
                        'HDL',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black, // Text color white
                        ),
                      ),
                      Text(
                        'TG',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black, // Text color white
                        ),
                      ),
                      Text(
                        'Heart Rate',
                        style: TextStyle(
                          fontSize: 16.0,
                          color: Colors.black, // Text color white
                        ),
                      ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        SizedBox(height: 20),
        Text(
          'Recommendation :Lifestyle changes and regular exercise',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.0), // Add spacing between Recommendation title and content
        // Recommendation content (You can add your recommendations here)

        // Severity title
        Text(
          'Severity Predicted : Moderate',
          style: TextStyle(
            fontSize: 16.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.0),
        SizedBox(height: 20.0),
          DefaultButton(
            text:"Download Report",
            press:() {
              
            },
          )
        ],
      ),
    );
  }
}
