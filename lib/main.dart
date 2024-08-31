import 'package:ecommerce/authpages/loginpage.dart';
import 'package:ecommerce/authpages/seller_address.dart';
import 'package:ecommerce/authpages/seller_register.dart';
import 'package:ecommerce/home.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}
