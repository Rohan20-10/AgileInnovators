import 'package:ecommerce/pages/seller/seller_home.dart';
import 'package:ecommerce/widgets/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SellerAddress extends StatefulWidget {
  const SellerAddress({super.key});

  @override
  State<SellerAddress> createState() => _SellerAddressState();
}

class _SellerAddressState extends State<SellerAddress> {
  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/img/loginimage.jpeg"),
              fit: BoxFit.cover),
        ),
        height: height,
        width: width,
        child: Center(
          child: Container(
            width: width * 0.95,
            height: height * 0.75,
            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 10,
                  )
                ],
                color: Colors.white.withOpacity(0.82),
                borderRadius: BorderRadius.circular(10)),
            child: Form(
              // form key
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text(
                        "Welcome to Apni Dukaan",
                        style: TextStyle(
                          color: Constants().primarycolor,
                          fontWeight: FontWeight.bold,
                          fontSize: 24,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        "Store Name",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Constants().primarycolor),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          hintStyle: TextStyle(fontSize: 14),
                          hintText: "Enter your Store Name",
                        ),
                        validator: (value) {
                          if (value == null) {
                            return "Enter a valid name";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        "Pincode",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Constants().primarycolor),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          hintStyle: TextStyle(fontSize: 14),
                          hintText: "Enter your Pincode",
                        ),
                        validator: (value) {
                          if (value == null ||
                              value.contains(RegExp("[A-Za-z]"))) {
                            return "Enter a valid pincode";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        "Address Line 1",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Constants().primarycolor),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          hintStyle: TextStyle(fontSize: 14),
                          hintText: "Enter your Address Line 1",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter a valid address";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        "Address Line 2",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Constants().primarycolor),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          hintStyle: TextStyle(fontSize: 14),
                          hintText: "Enter your Address Line 2",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter a valid address";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        "City",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Constants().primarycolor),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          hintStyle: TextStyle(fontSize: 14),
                          hintText: "Enter your City",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter a valid city";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.only(left: 8),
                      child: Text(
                        "State",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                            color: Constants().primarycolor),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.black)),
                          hintStyle: TextStyle(fontSize: 14),
                          hintText: "Enter your State",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter a valid state";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: SizedBox(
                        height: height * 0.07,
                        width: width,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Constants().primarycolor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(11),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => SellerHome()));
                          },
                          child: Text(
                            "Sign up",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Center(
                      child: Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                          text: "Already have an account? ",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Sign In",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            )
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 22,
                    ),
                    Center(
                      child: Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                          text: "Want to register as a buyer? ",
                          style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Register here",
                              style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()..onTap = () {},
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
