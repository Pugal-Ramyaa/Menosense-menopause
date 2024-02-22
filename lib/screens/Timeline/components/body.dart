import 'package:flutter/material.dart';
import 'package:menopausal_app/constants.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Replace with the actual number of timeline items
      itemBuilder: (context, index) {
        DateTime date = DateTime.now(); // Replace with your actual date data
        String formattedDate =
            '${date.day.toString().padLeft(2, '0')}/${date.month.toString().padLeft(2, '0')}/${date.year}'; // Format date as DD/MM/YYYY
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 30,
                height: 30,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: kPrimaryColor, // Color of the circle
                ),
              ),
              SizedBox(width: 10),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    formattedDate, // Display date in DD/MM/YYYY format
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    'Major Symptoms Experienced:',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                  SizedBox(height: 5),
                  Row(
                    
                    children: [
                      Tooltip(
                        message: 'Dizziness \n Intensity : 8/10 ',
                        child: Image.asset(
                          'Assets/Images/dizziness.png', // Replace with your image asset
                          width: 50,
                        ),
                      ),
                      SizedBox(width: 10),
                      Tooltip(
                        message: 'Hot Flashes \n Intensity: 7/10',
                        child: Image.asset(
                          'Assets/Images/hot-flashes.png', // Replace with your image asset
                          width: 50,
                        ),
                      ),
                      SizedBox(width: 10),
                      Tooltip(
                        message: 'Chills \n Intensity: 7/10',
                        child: Image.asset(
                          'Assets/Images/chills.png', // Replace with your image asset
                          width: 50,
                        ),
                      ),
                    ],
                    
                  ),
                  SizedBox(height: 5),
                  
                  Text(
                    'HB: 12.5 g/dl',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'FSH: 6.8 mIU/ml',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'ESTROGEN: 60 pg/ml',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'PROGESTERONE: 8 ng/ml',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'VITAMIN D: 40 ng/ml',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'FT3: 3.2 pg/ml',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'HEART RATE: 75 bpm',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'SBP: 120 mmHg',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'DBP: 80 mmHg',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'PROLACTIN: 10 ng/ml',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'LH: 4.2 mIU/ml',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'GNRH: 3.6 ng/ml',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'TSH: 2.5 mIU/L',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'FT4: 1.2 ng/dl',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'HDL: 50 mg/dl',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                  Text(
                    'TG: 100 mg/dl',
                    style: TextStyle(
                      fontSize: 14,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }
}
