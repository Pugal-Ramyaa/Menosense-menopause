import 'dart:developer';

import 'package:flutter/widgets.dart';
import 'package:menopausal_app/screens/Calender/Calender.dart';
import 'package:menopausal_app/screens/Doctor/Doctor.dart';
import 'package:menopausal_app/screens/Doctorlist/doctorlist.dart';
import 'package:menopausal_app/screens/Height_weight/Height_weight.dart';
import 'package:menopausal_app/screens/Home/Home.dart';
import 'package:menopausal_app/screens/MedicalHistory/MedicalHistory.dart';

import 'package:menopausal_app/screens/Profile/Profile.dart';
import 'package:menopausal_app/screens/Recommendation/Recommendation.dart';
import 'package:menopausal_app/screens/Report/report.dart';
import 'package:menopausal_app/screens/Stats/Stats.dart';
import 'package:menopausal_app/screens/Symptoms/Symptoms.dart';

import 'package:menopausal_app/screens/Timeline/Timeline.dart';
import 'package:menopausal_app/screens/Vitals/vitals.dart';
import 'package:menopausal_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:menopausal_app/screens/predictData/Predictdata.dart';
import 'package:menopausal_app/screens/sign_in/sign_in_screen.dart';
import 'package:menopausal_app/screens/sign_up/sign_up_screen.dart';
import 'package:menopausal_app/screens/splash/splash_screen.dart';
import 'package:menopausal_app/screens/birthday/birthday.dart';

import 'package:menopausal_app/screens/Oops/Oops.dart';

final Map<String , WidgetBuilder> routes = {
  SplashScreen.routeName: (context)=> SplashScreen(),
  SignInScreen.routeName: (context)=> SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  Birthday.routeName: (context) => Birthday(),
  Height_weight.routeName: (context) => Height_weight(),
  MedicalHistory.routeName: (context) => MedicalHistory(),
  Home.routeName: (context) => Home(),
  Calender.routeName:(context) => Calender(),
  Stats.routeName: (context) => Stats(),
  Symptoms.routeName: (context) => Symptoms(),
  DoctorList.routeName: (context) => DoctorList(),
  Doctor.routeName: (context) => Doctor(),
  Vitals.routeName: (context) => Vitals(),
  Report.routeName: (context) => Report(),
  Timeline.routeName: (context) => Timeline(),
  Oops.routeName: (context) => Oops(),
  Prediction.routeName: (context) => Prediction(),
  Recommendation.routeName: (context) => Recommendation(),
  Profile.routeName: (context) => Profile(),
};
