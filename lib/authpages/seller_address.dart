import 'package:ecommerce/api/api_service.dart'; // Import the API service
import 'package:ecommerce/authpages/registerpage.dart';
import 'package:ecommerce/authpages/seller_login.dart';
import 'package:ecommerce/pages/seller/bottombar.dart';
import 'package:ecommerce/widgets/constants.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class SellerAddress extends StatefulWidget {
  final String name;
  final String email;
  final String phoneNumber;
  final String password;
  final String msmeId;
  final String gstin;

  const SellerAddress({
    super.key,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.password,
    required this.msmeId,
    required this.gstin,
  });

  @override
  State<SellerAddress> createState() => _SellerAddressState();
}

class _SellerAddressState extends State<SellerAddress> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _storeNameController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();
  final TextEditingController _addressLine1Controller = TextEditingController();
  final TextEditingController _addressLine2Controller = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final ApiService _apiService = ApiService();

  void _registerSeller() async {
    if (_formKey.currentState!.validate()) {
      try {
        final response = await _apiService.registerSeller(
          name: widget.name,
          email: widget.email,
          phoneNumber: widget.phoneNumber,
          password: widget.password,
          businessName: _storeNameController.text,
          msmeId: widget.msmeId,
          gstin: widget.gstin,
          postalCode: _pincodeController.text,
          street: _addressLine1Controller.text,
          country: _addressLine2Controller.text,
          city: _cityController.text,
          state: _stateController.text,
        );

        print('Seller registered: $response');

        // Navigate to the home page or show a success message
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const Bottombar()),
        );
      } catch (e) {
        print('Error registering seller: $e');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Error: $e')),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;

    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/img/loginimage.jpeg"),
            fit: BoxFit.cover,
          ),
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
              borderRadius: BorderRadius.circular(10),
            ),
            child: Form(
              key: _formKey,
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
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
                    const SizedBox(height: 15),
                    // Store Name
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "Store Name",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Constants().primarycolor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        controller: _storeNameController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintStyle: TextStyle(fontSize: 14),
                          hintText: "Enter your Store Name",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter a valid store name";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Pincode
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "Pincode",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Constants().primarycolor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        controller: _pincodeController,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
                          hintStyle: TextStyle(fontSize: 14),
                          hintText: "Enter your Pincode",
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return "Enter a valid pincode";
                          } else if (value.contains(RegExp(r'[A-Za-z]'))) {
                            return "Pincode should only contain numbers";
                          } else {
                            return null;
                          }
                        },
                      ),
                    ),
                    const SizedBox(height: 20),
                    // Address Line 1
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "Address Line 1",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Constants().primarycolor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        controller: _addressLine1Controller,
                        decoration: const InputDecoration(
                          border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black),
                          ),
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
                    const SizedBox(height: 20),
                    // Address Line 2
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "Address Line 2",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Constants().primarycolor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        controller: _addressLine2Controller,
                        decoration: const InputDecoration(
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
                    const SizedBox(height: 20),
                    // City
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "City",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Constants().primarycolor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        controller: _cityController,
                        decoration: const InputDecoration(
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
                    const SizedBox(height: 20),
                    // State
                    Padding(
                      padding: const EdgeInsets.only(left: 8),
                      child: Text(
                        "State",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                          color: Constants().primarycolor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8),
                      child: TextFormField(
                        controller: _stateController,
                        decoration: const InputDecoration(
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
                    const SizedBox(height: 20),
                    // Sign up button
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
                          onPressed: _registerSeller,
                          child: const Text(
                            "Sign up",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 22),
                    Center(
                      child: Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                          text: "Already have an account? ",
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Sign In",
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SellerLogin()));
                                },
                            )
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 22),
                    Center(
                      child: Text.rich(
                        textAlign: TextAlign.center,
                        TextSpan(
                          text: "Want to register as a buyer? ",
                          style: const TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                          children: <TextSpan>[
                            TextSpan(
                              text: "Register here",
                              style: const TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 14,
                                decoration: TextDecoration.underline,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              Registerpage()));
                                },
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
