
import "package:flutter/material.dart";
import "package:menopausal_app/Components/default_button.dart";
import "package:menopausal_app/constants.dart";
import "package:menopausal_app/screens/Doctor/Doctor.dart";
import "package:menopausal_app/size_config.dart";

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
                "Connect with your doctor ...",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(22),
                  color: kPrimaryColor,
                ),
              ),
              SizedBox(height: SizeConfig.screenHeight * 0.02), // Adjust the spacing
              DisclaimerBox(), // Added DisclaimerBox
              SizedBox(height: SizeConfig.screenHeight * 0.04),
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
  late String doctorName;
  late String hospital;
  late String doctorId;
  bool consentToShareData = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildDoctorNameFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildHospitalFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildDoctorIdFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          buildConsentCheckbox(),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Next",
            press: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
                // You can use the doctorName, hospital, and doctorId variables here
                // For example, you can pass them to the next screen.
                Navigator.pushNamed(context, Doctor.routeName);
              }
            },
          ),
        ],
      ),
    );
  }
  
  Widget buildConsentCheckbox() {
    return SizedBox(
    width: double.infinity, // Set the desired width
    child: Row(
      children: [
        Checkbox(
          value: consentToShareData,
          onChanged: (value) {
            setState(() {
              consentToShareData = value!;
            });
          },
          activeColor: Colors.white,
          fillColor: MaterialStateProperty.all(kPrimaryColor),
          ),
        const Flexible(
          child: Text(
            "I consent to share my private health data with my doctor",
          ),
        ),
      ],
    ),
  );
  }
  TextFormField buildDoctorNameFormField() {
    return TextFormField(
      onSaved: (newValue) => doctorName = newValue!,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Please enter the Doctor Name";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Doctor Name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }

  TextFormField buildHospitalFormField() {
    return TextFormField(
      onSaved: (newValue) => hospital = newValue!,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Please enter the Hospital";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Hospital",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }

  TextFormField buildDoctorIdFormField() {
    return TextFormField(
      onSaved: (newValue) => doctorId = newValue!,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return "Please enter the Doctor ID";
        }
        return null;
      },
      decoration: const InputDecoration(
        labelText: "Doctor ID",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: kPrimaryColor,
          ),
        ),
      ),
    );
  }
}



class DisclaimerBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade200, // Adjust the background color as needed
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Text(
        "Disclaimer: Your doctor will be able to see all your data, symptoms, and logs once you connect with him/her.",
        style: TextStyle(
          color: Colors.black, // Adjust the text color as needed
        ),
      ),
    );
  }
}
