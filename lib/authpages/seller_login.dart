import 'package:flutter/cupertino.dart';

class SellerLogin extends StatelessWidget {
  const SellerLogin({super.key});

  @override
  Widget build(BuildContext context) {
<<<<<<< Updated upstream
    return const Placeholder();
=======
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
            height: height * 0.6,
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // login image
                  // Placeholder(),
                  const SizedBox(
                    height: 15,
                  ),
                  Center(
                    child: Text(
                      "DesiCourier(Seller)",
                      style: TextStyle(
                        color: Constants().primarycolor,
                        fontWeight: FontWeight.bold,
                        fontSize: 24,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8),
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
                      decoration: const InputDecoration(
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
                  const SizedBox(
                    height: 25,
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
                        border: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.black),
                        ),
                        hintStyle: const TextStyle(fontSize: 14),
                        hintText: "Enter your password",
                        suffixIcon: IconButton(
                          onPressed: _togglePasswordVisibility,
                          icon: Icon(_obscure
                              ? Icons.visibility_off
                              : Icons.visibility), //password visibility
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: RichText(
                      text: TextSpan(
                        text: 'Forgot Password?',
                        // recognizer for forgot password
                        style: TextStyle(
                          fontSize: 16,

                          color: Constants().primarycolor,
                          decoration: TextDecoration.underline,
                          decorationColor:
                              Constants().primarycolor, // Underline color
                          decorationThickness: 1, // Thickness of the underline
                        ),
                      ),
                    ),
                  ),

                  const SizedBox(
                    height: 40,
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
                          Navigator.push(context,
                              MaterialPageRoute(builder: (context) => Bottombar()));
                        },
                        child: const Text(
                          "Sign In",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Center(
                    child: Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                        text: "Don't have an account? ",
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: "SignUp",
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
                                            const SellerRegister()));
                              },
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 22,
                  ),
                  Center(
                    child: Text.rich(
                      textAlign: TextAlign.center,
                      TextSpan(
                        text: "Want to Login as a buyer? ",
                        style: const TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: 14,
                        ),
                        children: <TextSpan>[
                          TextSpan(
                            text: "Login",
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
                                            const LoginPage()));
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
    );
>>>>>>> Stashed changes
  }
}