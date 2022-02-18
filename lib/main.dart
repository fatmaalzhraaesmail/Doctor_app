import 'package:doctor_app/doctordetails.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'Home_page.dart';

void main() {
 
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner:false ,

      theme: ThemeData(
        primaryColor: Color(0xff053F5E),

        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}


