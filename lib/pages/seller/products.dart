import 'package:ecommerce/pages/seller/add_product.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/widgets/constants.dart';

class Products extends StatelessWidget {
  const Products({super.key});

  @override
  Widget build(BuildContext context) {
    // Sample product data
    final List<Map<String, String>> products = [
      {
        "name": "Product 1",
        "price": "\₹699",
        "image": "assets/img/Product1.jpg",
        "description":
            "Perfect for beginners and experienced devotees, with all the necessary items included and a pooja vidhi book for performing the pooja."
      },
      {
        "name": "Product 2",
        "price": "\₹799",
        "image": "assets/img/Product2.jpg",
        "description":
            "Combines block printing and shibori dyeing techniques for a distinctive look.Elegant midnight Olive kurta with an ivory white Pattern for a captivating contrast."
      },
      {
        "name": "Product 3",
        "price": "\₹999",
        "image": "assets/img/Product3.jpg",
        "description":
            "It is made up from combination of marble powder and Resin .It is Lord Krishna Idol .The size of the product is 2.5 x 1.5 x 5.75 inch"
      },
      {
        "name": "Product 4",
        "price": "\₹599",
        "image": "assets/img/Product4.webp",
        "description":
            "Specification:-Weight-290 Grams, Diameter-6.8 Inches, Height-2.6 Inches, Color-Brown, Material-Copper.This is made up of copper with shine finish. Some woods, dhoop, ghee are burnt in this hawan kund. It is provided with two copper handles easy to hold & shift the hawan kund to another place. It has a flat bottom that can be placed easily on flat surface."
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Products",
          style: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        ),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Card(
                color: Colors.white,
                elevation: 5,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: Column(
                  children: [
                    // Image
                    ClipRRect(
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(15),
                      ),
                      child: Image.asset(
                        products[index]["image"]!,
                        height: 180,
                        width: double.infinity,
                        fit: BoxFit.cover,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Product Name
                          Text(
                            products[index]["name"]!,
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          // Price
                          Text(
                            products[index]["price"]!,
                            style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w500,
                              color: Constants().primarycolor,
                            ),
                          ),
                          const SizedBox(height: 8.0),
                          // Description
                          Text(
                            products[index]["description"]!,
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[800],
                            ),
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ),
                    ),
                    Divider(height: 0.5, color: Colors.grey[300]),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              // Handle product edit
                            },
                            child: Text(
                              "Edit",
                              style: TextStyle(
                                color: Constants().primarycolor,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              // Handle product removal
                            },
                            child: Text(
                              "Remove",
                              style: TextStyle(
                                color: Colors.red,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => AddProductPage(),
              ));
          // Navigate to add product page or show a dialog to add a product
        },
        backgroundColor: Constants().primarycolor,
        child: Icon(Icons.add),
      ),
    );
  }
}
