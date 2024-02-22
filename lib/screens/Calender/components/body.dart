// MainScreen.dart
import 'package:flutter/material.dart';
import 'package:menopausal_app/constants.dart';
import 'package:menopausal_app/screens/Calender/components/CalenderComponent.dart';
import 'package:menopausal_app/screens/Calender/components/Symptomchoice.dart';
import 'package:menopausal_app/screens/Calender/components/Symptoms.dart';
import 'package:menopausal_app/screens/Home/Home.dart';
import 'package:menopausal_app/screens/Oops/Oops.dart';
import 'package:menopausal_app/size_config.dart';
import 'package:menopausal_app/Components/NoLog.dart';
import 'package:menopausal_app/Components/Oopslog.dart';
class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child:  SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    SizedBox(height: 30),
                    CalendarComponent(),
                    SizedBox(height: 10),
                    Oopslog(),
                    SizedBox(height: 20),
                  ],
                ),
              ),
            ),
          ),
            
          ],
        ),
      );
  }
}
