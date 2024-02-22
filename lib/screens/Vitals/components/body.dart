import 'package:flutter/material.dart';
import 'package:menopausal_app/constants.dart';
import 'package:menopausal_app/screens/Home/Home.dart';
import 'package:menopausal_app/screens/birthday/birthday.dart';
import 'package:menopausal_app/size_config.dart';
import '../../../Components/default_button.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SizedBox(
          width: double.infinity,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.08),
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
  final List<String> errors = [];
  late double hb;
  late double bp;
  late double fsh;
  late double prl;
  late double e2;
  late double lh;
  late double p4;
  late double vd;
  late double tsh;
  late double ft3;
  late double ft4;
  late double heartRate;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildHemoglobinFormField(),
          SizedBox(height: getProportionateScreenWidth(20)),
          buildBloodPressureFormField(),
          SizedBox(height: getProportionateScreenWidth(20)),
          buildFSHFormField(),
          SizedBox(height: getProportionateScreenWidth(20)),
          buildPRLFormField(),
          SizedBox(height: getProportionateScreenWidth(20)),
          buildE2FormField(),
          SizedBox(height: getProportionateScreenWidth(20)),
          buildLHFormField(),
          SizedBox(height: getProportionateScreenWidth(20)),
          buildP4FormField(),
          SizedBox(height: getProportionateScreenWidth(20)),
          buildVDFormField(),
          SizedBox(height: getProportionateScreenWidth(20)),
          buildTSHFormField(),
          SizedBox(height: getProportionateScreenWidth(20)),
          buildFT3FormField(),
          SizedBox(height: getProportionateScreenWidth(20)),
          buildFT4FormField(),
          SizedBox(height: getProportionateScreenWidth(20)),
          buildHeartRateFormField(),
          SizedBox(height: getProportionateScreenHeight(20)),
          DefaultButton(
            text: "Save",
            press: () {
              
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
              }
            },
          )
        ],
      ),
    );
  }

  TextFormField buildHemoglobinFormField() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      onSaved: (newValue) => hb = double.parse(newValue!),
      decoration: InputDecoration(
        labelText: "Hemoglobin",
        hintText: "Enter your hemoglobin (HB) level",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        errorText: errors.contains(kNameNullError) ? kNameNullError : null,
        errorStyle: const TextStyle(color: Colors.red),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: errors.contains(kNameNullError) ? Colors.red : kPrimaryColor),
        ),
        suffixIcon: IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Information"),
                content: Text("Hiii how can I help you"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("OK"),
                  ),
                ],
              );
            },
          );
        },
        icon: Icon(Icons.info),
      ),
      ),
      
    );
  }

  TextFormField buildBloodPressureFormField() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      onSaved: (newValue) => bp = double.parse(newValue!),
      decoration: InputDecoration(
        labelText: "Blood Pressure",
        hintText: "Enter your Blood Pressure (BP)",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        errorText: errors.contains(kNameNullError) ? kNameNullError : null,
        errorStyle: const TextStyle(color: Colors.red),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: errors.contains(kNameNullError) ? Colors.red : kPrimaryColor),
        ),
        suffixIcon: IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Information"),
                content: Text("Hiii how can I help you"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("OK"),
                  ),
                ],
              );
            },
          );
        },
        icon: Icon(Icons.info),
      ),
      ),
    );
  }

  // Similar TextFormField builders for other fields (FSH, Prolactin, etc.)
  TextFormField buildFSHFormField() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      onSaved: (newValue) => fsh = double.parse(newValue!),
      decoration: InputDecoration(
        labelText: "Follicle Stimulating Hormone (FSH)",
        hintText: "Enter your FSH level",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        errorText: errors.contains(kNameNullError) ? kNameNullError : null,
        errorStyle: const TextStyle(color: Colors.red),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: errors.contains(kNameNullError) ? Colors.red : kPrimaryColor),
        ),
        suffixIcon: IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Information"),
                content: Text("Hiii how can I help you"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("OK"),
                  ),
                ],
              );
            },
          );
        },
        icon: Icon(Icons.info),
      ),
      ),
    );
  }
  TextFormField buildPRLFormField() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      onSaved: (newValue) => prl = double.parse(newValue!),
      decoration: InputDecoration(
        labelText: "Prolactin (PRL)",
        hintText: "Enter your PRL level",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        errorText: errors.contains(kNameNullError) ? kNameNullError : null,
        errorStyle: const TextStyle(color: Colors.red),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: errors.contains(kNameNullError) ? Colors.red : kPrimaryColor),
        ),
        suffixIcon: IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Information"),
                content: Text("Hiii how can I help you"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("OK"),
                  ),
                ],
              );
            },
          );
        },
        icon: Icon(Icons.info),
      ),
      ),
    );
  }
  TextFormField buildE2FormField() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      onSaved: (newValue) => e2 = double.parse(newValue!),
      decoration: InputDecoration(
        labelText: "Estrogen (E2)",
        hintText: "Enter your E2 level",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        errorText: errors.contains(kNameNullError) ? kNameNullError : null,
        errorStyle: const TextStyle(color: Colors.red),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: errors.contains(kNameNullError) ? Colors.red : kPrimaryColor),
        ),
        suffixIcon: IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Information"),
                content: Text("Hiii how can I help you"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("OK"),
                  ),
                ],
              );
            },
          );
        },
        icon: Icon(Icons.info),
      ),
      ),
    );
  }
  TextFormField buildLHFormField() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      onSaved: (newValue) => lh = double.parse(newValue!),
      decoration: InputDecoration(
        labelText: "Lutienizing Hormone (LH)",
        hintText: "Enter your LH level",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        errorText: errors.contains(kNameNullError) ? kNameNullError : null,
        errorStyle: const TextStyle(color: Colors.red),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: errors.contains(kNameNullError) ? Colors.red : kPrimaryColor),
        ),
        suffixIcon: IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Information"),
                content: Text("Hiii how can I help you"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("OK"),
                  ),
                ],
              );
            },
          );
        },
        icon: Icon(Icons.info),
      ),
      ),
    );
  }
  TextFormField buildP4FormField() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      onSaved: (newValue) => p4 = double.parse(newValue!),
      decoration: InputDecoration(
        labelText: "Progesterone (P4)",
        hintText: "Enter your P4 level",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        errorText: errors.contains(kNameNullError) ? kNameNullError : null,
        errorStyle: const TextStyle(color: Colors.red),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: errors.contains(kNameNullError) ? Colors.red : kPrimaryColor),
        ),
        suffixIcon: IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Information"),
                content: Text("Hiii how can I help you"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("OK"),
                  ),
                ],
              );
            },
          );
        },
        icon: Icon(Icons.info),
      ),
      ),
    );
  }
  TextFormField buildVDFormField() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      onSaved: (newValue) => vd = double.parse(newValue!),
      decoration: InputDecoration(
        labelText: "Vitamin D (VD)",
        hintText: "Enter your VD level",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        errorText: errors.contains(kNameNullError) ? kNameNullError : null,
        errorStyle: const TextStyle(color: Colors.red),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: errors.contains(kNameNullError) ? Colors.red : kPrimaryColor),
        ),
        suffixIcon: IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Information"),
                content: Text("Hiii how can I help you"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("OK"),
                  ),
                ],
              );
            },
          );
        },
        icon: Icon(Icons.info),
      ),
      ),
    );
  }
  TextFormField buildTSHFormField() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      onSaved: (newValue) => tsh = double.parse(newValue!),
      decoration: InputDecoration(
        labelText: "Thyroid-stimulating hormone (TSH)",
        hintText: "Enter your TSH level",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        errorText: errors.contains(kNameNullError) ? kNameNullError : null,
        errorStyle: const TextStyle(color: Colors.red),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: errors.contains(kNameNullError) ? Colors.red : kPrimaryColor),
        ),
        suffixIcon: IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Information"),
                content: Text("Hiii how can I help you"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("OK"),
                  ),
                ],
              );
            },
          );
        },
        icon: Icon(Icons.info),
      ),
      ),
    );
  }
  TextFormField buildFT3FormField() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      onSaved: (newValue) => ft3 = double.parse(newValue!),
      decoration: InputDecoration(
        labelText: "Triiodothyronine (FT3)",
        hintText: "Enter your FT3 level",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        errorText: errors.contains(kNameNullError) ? kNameNullError : null,
        errorStyle: const TextStyle(color: Colors.red),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: errors.contains(kNameNullError) ? Colors.red : kPrimaryColor),
        ),
        suffixIcon: IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Information"),
                content: Text("Hiii how can I help you"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("OK"),
                  ),
                ],
              );
            },
          );
        },
        icon: Icon(Icons.info),
      ),
      ),
    );
  }
  TextFormField buildFT4FormField() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      onSaved: (newValue) => ft4 = double.parse(newValue!),
      decoration: InputDecoration(
        labelText: "Thyroxine (FT4)",
        hintText: "Enter your FT4 level",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        errorText: errors.contains(kNameNullError) ? kNameNullError : null,
        errorStyle: const TextStyle(color: Colors.red),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: errors.contains(kNameNullError) ? Colors.red : kPrimaryColor),
        ),
        suffixIcon: IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Information"),
                content: Text("Hiii how can I help you"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("OK"),
                  ),
                ],
              );
            },
          );
        },
        icon: Icon(Icons.info),
      ),
      ),
    );
  }
  TextFormField buildHeartRateFormField() {
    return TextFormField(
      keyboardType: TextInputType.numberWithOptions(decimal: true),
      onSaved: (newValue) => heartRate = double.parse(newValue!),
      decoration: InputDecoration(
        labelText: "Heart Rate",
        hintText: "Enter your Heart Rate level",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        errorText: errors.contains(kNameNullError) ? kNameNullError : null,
        errorStyle: const TextStyle(color: Colors.red),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: errors.contains(kNameNullError) ? Colors.red : kPrimaryColor),
        ),
        suffixIcon: IconButton(
        onPressed: () {
          showDialog(
            context: context,
            builder: (BuildContext context) {
              return AlertDialog(
                title: Text("Information"),
                content: Text("Hiii how can I help you"),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: Text("OK"),
                  ),
                ],
              );
            },
          );
        },
        icon: Icon(Icons.info),
      ),
      ),
    );
  }

  // Implement similar TextFormField builders for other fields like Prolactin, Estrogen, etc.
}

class formErrors extends StatelessWidget {
  const formErrors({
    super.key,
    required this.errors,
  });

  final List<String> errors;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        errors.length, (index) => formErrorText(error: errors[index])),
    );
  }

  Row formErrorText({required String error}) {
    return Row(
      children: [
        SizedBox(
          width: getProportionateScreenWidth(10),
        ),
        Text(error),
      ],
    );
  }
}
