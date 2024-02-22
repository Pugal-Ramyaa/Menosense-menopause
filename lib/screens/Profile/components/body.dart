import 'package:flutter/material.dart';
import 'package:intl/intl.dart'; // Import the intl package
import 'package:flutter_svg/svg.dart';
import 'package:menopausal_app/Components/no_account_text.dart';
import 'package:menopausal_app/constants.dart';
import 'package:menopausal_app/screens/Calender/Calender.dart';
import 'package:menopausal_app/screens/Home/Home.dart';
import 'package:menopausal_app/screens/Profile/Profile.dart';
import 'package:menopausal_app/screens/Stats/Stats.dart';
import 'package:menopausal_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:menopausal_app/size_config.dart';

import '../../../Components/default_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.all(getProportionateScreenWidth(20)),
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                SignForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SizedBox(height: getProportionateScreenWidth(20)),
                
              ],
            ),
          ),
          ),
      ),
    );
  }
}

class SignForm extends StatefulWidget {
  @override
  _SignFormState createState() => _SignFormState();
}

class _SignFormState extends State<SignForm> {
  final _formKey = GlobalKey<FormState>();
  late String name;
  late double height;
  late DateTime birthday = DateTime(1990, 1, 1); // Set default value for birthday
  bool isEditingName = false;
  bool isEditingHeight = false;
  bool isEditingBirthday = false;
  bool enableReminders = false;
  List<String> selectedOptions = []; // Initialize the selected options list
  bool showMenstrualIrregularityYearField = false;
  bool showThyroidProblemYearField = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Stack(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage: NetworkImage('https://example.com/your_profile_picture.jpg'),
                  ),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: IconButton(
                      icon: Icon(Icons.edit),
                      onPressed: () {
                        // Implement functionality to change profile picture
                      },
                    ),
                  ),
                ],
              ),
            ],
          ),
          SizedBox(height: 20),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  readOnly: !isEditingName,
                  initialValue: 'John Doe', // Replace with actual initial value
                  decoration: InputDecoration(
                    labelText: 'Name',
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  onSaved: (newValue) => name = newValue!,
                ),
              ),
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  setState(() {
                    isEditingName = !isEditingName;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  readOnly: !isEditingHeight,
                  initialValue: '170', // Replace with actual initial value
                  decoration: InputDecoration(labelText: 'Height'),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your height';
                    }
                    return null;
                  },
                  onSaved: (newValue) => height = double.parse(newValue!),
                ),
              ),
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  setState(() {
                    isEditingHeight = !isEditingHeight;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 10),
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  readOnly: !isEditingBirthday,
                  decoration: InputDecoration(labelText: 'Birthday'),
                  controller: TextEditingController(
                      text: DateFormat('yyyy-MM-dd').format(birthday)), // Format the date
                  onTap: () async {
                    // Display date picker when the text field is tapped
                    DateTime? pickedDate = await showDatePicker(
                      context: context,
                      initialDate: birthday,
                      firstDate: DateTime(1900),
                      lastDate: DateTime.now(),
                    );
                    if (pickedDate != null && pickedDate != birthday) {
                      setState(() {
                        birthday = pickedDate;
                      });
                    }
                  },
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your birthday';
                    }
                    return null;
                  },
                  onSaved: (newValue) => birthday = DateTime.parse(newValue!),
                ),
              ),
              IconButton(
                icon: Icon(Icons.edit),
                onPressed: () {
                  setState(() {
                    isEditingBirthday = !isEditingBirthday;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 20),
          buildHeightCheckboxList(),
          SizedBox(height: 20),
          // Other Form Fields (Email, Password, etc.)
          // Replace with your existing form fields
          Container(
  decoration: BoxDecoration(
    color: kPrimaryColor,
    borderRadius: BorderRadius.circular(25), // Adjust the value as needed
  ),
  padding: EdgeInsets.all(16),
  child: Row(
    children: [
      Checkbox(
        activeColor: Colors.black,
        value: enableReminders,
        onChanged: (value) {
          setState(() {
            enableReminders = value ?? false;
          });
           
        },
      ),
      Text(
        'Enable reminders',
        style: TextStyle(color: Colors.white),
      ),
    ],
  ),
),
SizedBox(height: 20,),
          TextButton(
  onPressed: () {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      showDialog(
                  context: context,
                  builder: (BuildContext context) {
                    return AlertDialog(
                      content: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Image.asset(
                            "Assets/Images/success.png", // Replace with your image path
                            width: 200,
                            height: 200,
                          ),
                          SizedBox(height: 20),
                          Text(
                            'Successfully Submitted',
                            style: TextStyle(fontSize: 20),
                          ),
                        ],
                      ),
                      actions: [
                        TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                            Navigator.push( // Push a new route
                              context,
                              MaterialPageRoute(builder: (context) => Home()), // Replace AnotherPage() with the page you want to navigate to
                            );
                          },
                          child: Center(
                            child: Text("OK"),
                          ),
                        ),
                      ],
                    );
                  },
      );
      // Implement form submission logic here
    }
  },
  style: ButtonStyle(
    backgroundColor: MaterialStateProperty.all(Colors.black),
    foregroundColor: MaterialStateProperty.all(Colors.white),
  ),
  child: Text('Save Changes'),
),

        ],
      ),
    );
  }

  Column buildHeightCheckboxList() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Your medical history :",
          style: TextStyle(fontSize: getProportionateScreenWidth(15)),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        Column(
          children: [
            CheckboxListTile(
              title: Text("Obesity"),
              value: selectedOptions.contains("Obesity"),
              onChanged: (value) {
                updateSelectedOptions("Obesity", value);
              },
              activeColor: kPrimaryColor,
            ),
            CheckboxListTile(
              title: Text("Cardiovascular Disease"),
              value: selectedOptions.contains("Cardiovascular Disease"),
              onChanged: (value) {
                updateSelectedOptions("Cardiovascular Disease", value);
              },
              activeColor: kPrimaryColor,
            ),
            CheckboxListTile(
              title: Text("Menstrual Irregularity"),
              value: selectedOptions.contains("Menstrual Irregularity"),
              onChanged: (value) {
                updateSelectedOptions("Menstrual Irregularity", value);
                setState(() {
                  showMenstrualIrregularityYearField = value ?? false;
                });
              },
              activeColor: kPrimaryColor,
            ),
            if (showMenstrualIrregularityYearField)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Menstrual Irregularity Year'),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the year';
                    }
                    return null;
                  },
                  // Add onSave handler if needed
                ),
              ),
            CheckboxListTile(
              title: Text("Thyroid Problem"),
              value: selectedOptions.contains("Thyroid Problem"),
              onChanged: (value) {
                updateSelectedOptions("Thyroid Problem", value);
                setState(() {
                  showThyroidProblemYearField = value ?? false;
                });
              },
              activeColor: kPrimaryColor,
            ),
            if (showThyroidProblemYearField)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: TextFormField(
                  decoration: InputDecoration(labelText: 'Thyroid Problem Year'),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter the year';
                    }
                    return null;
                  },
                  // Add onSave handler if needed
                ),
              ),
            CheckboxListTile(
              title: Text("PCOS"),
              value: selectedOptions.contains("PCOS"),
              onChanged: (value) {
                updateSelectedOptions("PCOS", value);
              },
              activeColor: kPrimaryColor,
            ),
            CheckboxListTile(
              title: Text("HyperTension"),
              value: selectedOptions.contains("HyperTension"),
              onChanged: (value) {
                updateSelectedOptions("HyperTension", value);
              },
              activeColor: kPrimaryColor,
            ),
            CheckboxListTile(
              title: Text("Diabetes"),
              value: selectedOptions.contains("Diabetes"),
              onChanged: (value) {
                updateSelectedOptions("Diabetes", value);
              },
              activeColor: kPrimaryColor,
            ),
          ],
        ),
      ],
    );
  }

  void updateSelectedOptions(String option, bool? value) {
    setState(() {
      if (value != null && value) {
        selectedOptions.add(option);
      } else {
        selectedOptions.remove(option);
      }
    });
  }
}
