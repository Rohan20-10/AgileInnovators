import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import '../widgets/constants.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final double Sheight = size.height;
    final double Swidth = size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cart"),
        centerTitle: true,
        backgroundColor: Constants().lightgrey,

      ),
      body: Container(
        width: Swidth,
        height: Sheight,
        decoration: BoxDecoration(color: Constants().lightgrey),
        child: Stack(
          children: [
            Positioned(
              bottom: 220,
              top: 0,
              right: 0,
              left: 0,
              child: ListView.builder(
                shrinkWrap: true,
                itemCount: 2,
                itemBuilder: (context, index) {
                  return Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10),
                        padding: EdgeInsets.all(12),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(12),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.1),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: Offset(0, 3), // changes the shadow position
                            ),
                          ],
                        ),
                        child: Row(
                          children: [
                            // Product Image
                            ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/img/colordemo.jpeg', // Replace with your image path
                                height: 60,
                                width: 60,
                                fit: BoxFit.cover,
                              ),
                            ),
                            SizedBox(width: 10),
                            Expanded(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  // Product Title
                                  Text(
                                    'Holi Colors', // Replace with your product title
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black,
                                    ),
                                  ),
                                  SizedBox(height: 5),
                                  // Product Price
                                  Text(
                                    '\₹600.00',
                                    style: TextStyle(
                                      fontSize: 14,
                                      color: Constants().darkgrey,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(width: 10),
                            // Quantity
                            Row(
                              children: [
                                // Decrease Button

                                Container(
                                  height: 28,
                                  width: 28,
                                  decoration: BoxDecoration(
                                    color: Colors.grey.shade200,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    icon: Icon(
                                      Icons.remove,
                                      size: 16,
                                      color: Colors.black,
                                    ),
                                    onPressed: () {
                                      // Decrease quantity

                                    },
                                  ),
                                ),
                                SizedBox(width: 5),
                                // Quantity Display
                                Container(
                                  alignment: Alignment.center,
                                  height: 28,
                                  width: 28,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Color(0xffE2E2E2)),
                                    color: Color(0xffE2E2E2).withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Text(
                                    "1",
                                    style: TextStyle(fontSize: 14),
                                  ),
                                ),
                                SizedBox(width: 5),
                                // Increase Button
                                Container(
                                  height: 28,
                                  width: 28,
                                  decoration: BoxDecoration(
                                    color: Constants().primarycolor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: IconButton(
                                    padding: EdgeInsets.zero,
                                    icon: Icon(
                                      Icons.add,
                                      size: 16,
                                      color: Colors.white,
                                    ),
                                    onPressed: () {
                                      // Increase quantity


                                    },
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 10,),
                    ],
                  );
                },
              ),
            ),
            Positioned(
              bottom: 0,
              right: 0,
              left: 0,
              child: Container(
                height: 100,
                padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 8.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topRight: Radius.circular(12),topLeft: Radius.circular(12))
                ),
               
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Cart Total",
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.w500),
                          ),
                          SizedBox(height: 3),
                          Text(
                            "₹500",
                            style: TextStyle(
                              fontSize: 21,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 72,
                      width: Swidth * 0.7,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.yellow.shade900,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(19),
                          ),
                        ),
                        onPressed: () {
                          // checkout screen
                        },
                        child: Text(
                          "Go to Checkout",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
