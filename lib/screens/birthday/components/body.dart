// ignore_for_file: use_key_in_widget_constructors
import 'package:intl/intl.dart';
import "package:flutter/material.dart";
import "package:menopausal_app/Components/default_button.dart";
import "package:menopausal_app/constants.dart";
import "package:menopausal_app/screens/Height_weight/Height_weight.dart";
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
                "Let's get to know you better ...",
                style: TextStyle(
                  fontSize: getProportionateScreenWidth(22),
                  color: kPrimaryColor,
                ),
              ),
              
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              ForgotPassForm(),
            ],
          ),
        ),
      ),
    );
  }
}

class ForgotPassForm extends StatefulWidget {
  @override
  // ignore: library_private_types_in_public_api
  _ForgotPassFormState createState() => _ForgotPassFormState();
}

class _ForgotPassFormState extends State<ForgotPassForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> errors = [];
  late String date='';

  // Define the dateRegex here
  final RegExp dateRegex = RegExp(r"^(0[1-9]|[12][0-9]|3[01])-(0[1-9]|1[0-2])-\d{4}$");


  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          SizedBox(height: getProportionateScreenHeight(20)),
          buildBirthdayFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
            text: "Next",
            press: () {
              if (_formKey.currentState!.validate()) {
                Navigator.pushNamed(context, Height_weight.routeName);
              }
            },
          ),
        ],
      ),
    );
  }

  TextFormField buildBirthdayFormField() {
  return TextFormField(
    keyboardType: TextInputType.datetime,
    onTap: () async {
      // Display date picker when the text field is tapped
      DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(1900,1,1),
        lastDate: DateTime.now(),
      );
      if (pickedDate != null) {
        // Format the picked date
        String formattedDate = DateFormat('dd-MM-yyyy').format(pickedDate);
        setState(() {
          date = formattedDate;
        });
      }
    },
    readOnly: true,
    controller: TextEditingController(text: date),
    validator: (value) {
      if (value?.isEmpty ?? true) {
        return 'Please enter your birthday';
      } else if (!dateRegex.hasMatch(value!)) {
        return 'Please enter a valid date (DD/MM/YYYY)';
      }
      return null;
    },
    decoration: InputDecoration(
      labelText: "Birthday",
      hintText: "DD/MM/YYYY",
      floatingLabelBehavior: FloatingLabelBehavior.always,
    ),
  );
}

  }

