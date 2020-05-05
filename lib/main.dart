import 'package:doglife/views/change_language.dart';
import 'package:doglife/views/create_post.dart';
import 'package:doglife/views/edit_profile.dart';
import 'package:doglife/views/home.dart';
import 'package:doglife/views/home/settings.dart';
import 'package:doglife/views/login.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dog Life',
      theme: ThemeData(
        primaryColor: Colors.white,
      ),
      home: Login(),
    );
  }
}
