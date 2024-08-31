import 'package:ecommerce/widgets/constants.dart';
import 'package:flutter/material.dart';

class MyProfilePage extends StatelessWidget {
  const MyProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final Swidth = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(fontWeight: FontWeight.w700),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "Name",
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 10),
            buildContainerProfile(Swidth, "Rutvik Bangar"),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "Mobile Number",
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 10),
            buildContainerProfile(Swidth, "9999999999"),
            SizedBox(height: 20),
            Padding(
              padding: EdgeInsets.only(left: 8.0),
              child: Text(
                "Email Address",
                style: TextStyle(fontSize: 18),
              ),
            ),
            SizedBox(height: 10),
            buildContainerProfile(Swidth, "rrb@gmail.com"),
          ],
        ),
      ),
    );
  }

  Container buildContainerProfile(double Swidth, String title) {
    return Container(
      padding: EdgeInsets.only(left: 16.0),
      alignment: Alignment.centerLeft,
      height: 70,
      width: Swidth * 0.90,
      decoration: BoxDecoration(
        color: Constants().lightgrey,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        title,
        style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
      ),
    );
  }
  }

