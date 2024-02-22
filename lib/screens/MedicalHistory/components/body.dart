import 'package:flutter/material.dart';
import 'package:menopausal_app/components/default_button.dart';
import 'package:menopausal_app/constants.dart';
import 'package:menopausal_app/screens/Home/Home.dart';
import 'package:menopausal_app/size_config.dart';

class Body extends StatelessWidget {
  const Body({Key? key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              Text(
                "Let's get to know you better ...",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(22),
                  color: kPrimaryColor,
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              HeightWeightForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.08),
              SizedBox(height: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ),
    );
  }
}

class HeightWeightForm extends StatefulWidget {
  @override
  _HeightWeightFormState createState() => _HeightWeightFormState();
}

class _HeightWeightFormState extends State<HeightWeightForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> selectedOptions = [];
  bool showMenstrualIrregularityYearField = false;
  bool showThyroidProblemYearField = false;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(20)),
          buildHeightCheckboxList(),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
            text: "Submit",
            press: () {
              if (_formKey.currentState!.validate()) {
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
