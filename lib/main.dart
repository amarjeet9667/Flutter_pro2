import 'package:flutter/material.dart';
import 'package:shared_pref1/MainActivity.dart';
import 'package:shared_pref1/forget.dart';
import 'package:shared_pref1/login.dart';
import 'package:shared_pref1/signup.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: MyLogin(),
    routes: {
      'MainActivity': (context) => MyLogin(),
      'login':(context)=> MyLoginp(),
      'signup':(context)=> MySignup(),
      'forget':(context)=> MyForget(),
      'MainActivity':(context)=> MyLogin(),
      'MainActivity':(context)=> MyLogin(),
      'MainActivity': (context) => MyLogin(),
    },
  ));
}
