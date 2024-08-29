
import 'package:ecommerce/authpages/loginpage.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widgets/constants.dart';

class Registerpage extends StatefulWidget {
  const Registerpage({super.key});

  @override
  State<Registerpage> createState() => _RegisterpageState();
}

class _RegisterpageState extends State<Registerpage> {
bool _obscure = true;

void _togglePasswordVisibility(){
  setState(() {
    _obscure = !_obscure;
  });

}

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final height = size.height;
    final width = size.width;
    return Scaffold(
      body:Container(
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage("assets/img/loginimage.jpeg"),fit: BoxFit.cover),
        ),
        height: height,
        width: width,
        child: Center(
          child: Container(
            width: width*0.95,height: height*0.65,

            decoration: BoxDecoration(
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    spreadRadius: 5,
                    blurRadius: 10,)
                ],
                color: Colors.white.withOpacity(0.82),
                borderRadius: BorderRadius.circular(10)

            ),
            child: Form(
              // form key
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
                      "Fullname",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Constants().primarycolor,

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextFormField(

                      validator: (val) {
                        if (val == null) {
                          return "Name cannot be empty";
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)
                        ),
                        focusedBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.black)),
                        hintStyle: TextStyle(fontSize: 14),
                        hintText: "Enter your name",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text(
                      "Email",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Constants().primarycolor,

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextFormField(
                      // email validator


                      keyboardType: TextInputType.emailAddress,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintStyle: TextStyle(fontSize: 14),
                        hintText: "Enter your email",
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
                    child: Text(
                      "Password",
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                        color: Constants().primarycolor,

                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 8.0),
                    child: TextFormField(
                      //password validator

                      validator: (val) {
                        if (val!.length < 6) {
                          return "Password must be at least 6 characters";
                        } else {
                          return null;
                        }
                      },
                      obscureText: _obscure,
                      decoration: InputDecoration(
                        border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),

                        hintStyle: TextStyle(fontSize: 14),
                        hintText: "Enter your password",

                        suffixIcon: IconButton(
                          onPressed: _togglePasswordVisibility,
                          icon: Icon(
                              _obscure?Icons.visibility_off
                                  :Icons.visibility
                          ),  //password visibility
                        ),
                      ),
                    ),
                  ),


                  SizedBox(
                    height: 35,
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
                          // login function
                        },
                        child: Text(
                          "Sign Up",
                          style:
                          TextStyle(color: Colors.white, fontSize: 15,),
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
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> LoginPage()));
                              },
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ),

      ),
    );
  }
}
