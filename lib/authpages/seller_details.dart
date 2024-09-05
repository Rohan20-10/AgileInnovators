import 'package:ecommerce/authpages/seller_address.dart';
import 'package:ecommerce/widgets/constants.dart';
import 'package:flutter/material.dart';

class SellerDetails extends StatefulWidget {
  final String name;
  final String email;
  final String phoneNumber;
  final String password;

  const SellerDetails({
    super.key,
    required this.name,
    required this.email,
    required this.phoneNumber,
    required this.password,
  });

  @override
  State<SellerDetails> createState() => _SellerDetailsState();
}

class _SellerDetailsState extends State<SellerDetails> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _gstinController = TextEditingController();
  final TextEditingController _msmeIdController = TextEditingController();

  void _goToNextPage() {
    if (_formKey.currentState!.validate()) {
      Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => SellerAddress(
            name: widget.name,
            email: widget.email,
            phoneNumber: widget.phoneNumber,
            password: widget.password,
            msmeId: _msmeIdController.text,
            gstin: _gstinController.text,
          ),
        ),
      );
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
              fit: BoxFit.cover),
        ),
        height: height,
        width: width,
        child: Center(
          child: Container(
            width: width * 0.95,
            height: height * 0.55,
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
              key: _formKey,
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
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      "GST number",
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
                      controller: _gstinController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintStyle: TextStyle(fontSize: 14),
                        hintText: "Enter your GST number",
                      ),
                      validator: (value) {
                        if (value == null ||
                            value.isEmpty ||
                            value.length != 15) {
                          return "Enter a valid GST number (15 characters)";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      "MSME ID",
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
                      controller: _msmeIdController,
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintStyle: TextStyle(fontSize: 14),
                        hintText: "Enter your MSME ID",
                      ),
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return "Enter a valid MSME ID";
                        } else {
                          return null;
                        }
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
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
                        onPressed: _goToNextPage,
                        child: const Text(
                          "Next",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
