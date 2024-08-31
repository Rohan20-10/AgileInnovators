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
        "description": "Description for Product 1"
      },
      {
        "name": "Product 2",
        "price": "\₹799",
        "image": "assets/img/Product2.jpg",
        "description": "Description for Product 2"
      },
      {
        "name": "Product 3",
        "price": "\₹999",
        "image": "assets/img/Product3.jpg",
        "description": "Description for Product 3"
      },
      {
        "name": "Product 4",
        "price": "\₹599",
        "image": "assets/img/Product4.webp",
        "description": "Description for Product 4"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "My Products",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        leading: Icon(Icons.arrow_back),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Card(
                color: Constants().grey,
                elevation: 4,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                child: ListTile(
                  contentPadding: EdgeInsets.all(16.0),
                  leading: Container(
                    width: 70,
                    height: 70,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      image: DecorationImage(
                        image: AssetImage(products[index]["image"]!),
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  title: Text(
                    products[index]["name"]!,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                    ),
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        products[index]["price"]!,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                      SizedBox(height: 4.0),
                      Text(
                        products[index]["description"]!,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                  trailing: PopupMenuButton<String>(
                    onSelected: (value) {
                      if (value == 'edit') {
                        // Navigate to edit page
                      } else if (value == 'remove') {
                        // Handle product removal
                        // You might want to show a confirmation dialog before removing
                      }
                    },
                    itemBuilder: (context) => [
                      PopupMenuItem(
                        value: 'edit',
                        child: Text('Edit'),
                      ),
                      PopupMenuItem(
                        value: 'remove',
                        child: Text('Remove'),
                      ),
                    ],
                    icon: Icon(
                      Icons.more_vert,
                      color: Colors.grey,
                    ),
                  ),
                  onTap: () {
                    // Handle product tap (e.g., navigate to a detail page)
                  },
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
        backgroundColor: Constants().orange,
        child: Icon(Icons.add),
      ),
    );
  }
}
