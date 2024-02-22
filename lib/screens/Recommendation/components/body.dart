import 'package:flutter/material.dart';
import 'package:menopausal_app/Components/default_button.dart';
import 'package:menopausal_app/screens/Doctor/Doctor.dart';

class Body extends StatelessWidget {
  final List<Map<String, dynamic>> imageList;

  const Body({Key? key, required this.imageList}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
    child: Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 20),
          Text(
            'The predicted severity is',
            style: TextStyle(fontSize: 20),
          ),
          SizedBox(height: 20),
          Text(
            'MILD',
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),
          for (int index = 0; index < imageList.length; index++)
            if (imageList[index]['showImage'] == true)
              Column(
                children: [
                  Image.asset(
                    imageList[index]['imagePath'] ?? '',
                    width: 400,
                    height: 400,
                  ),
                  SizedBox(height: 8),
                  Container(
                    color: Colors.white, // Set background color to white
                    child: Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        imageList[index]['severity'] ?? '',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  
                ],
                
              ),
              Padding(
                padding: EdgeInsets.all(20), // Add padding on all sides
                child: DefaultButton(
                  text: "Consult your doctor",
                  press: () {
                    Navigator.pushNamed(context, Doctor.routeName);
                  },
                ),
              ),
              SizedBox(height: 50),
        ],
      ),
    ),
    );
  }
}
