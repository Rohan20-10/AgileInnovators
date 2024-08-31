import 'package:ecommerce/widgets/constants.dart';
import 'package:flutter/material.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String shopName = "ShopName";
    final String shopAddress = "123, Main Street, City, Country";
    final String shopEmail = "shopname@example.com";

    return Scaffold(
      appBar: AppBar(
        title: Text("Seller Profile"),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications),
            onPressed: () {
              // Handle notifications
            },
          ),
          IconButton(
            icon: Icon(Icons.logout),
            onPressed: () {
              // Handle logout
            },
          )
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Welcome, $shopName!",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            SizedBox(height: 10),
            Card(
              color: Constants().grey,
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Shop Details",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Address: $shopAddress",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      "Email: $shopEmail",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[700],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
            ListTile(
              leading: Icon(Icons.store, color: Constants().orange),
              title: Text("Manage Products"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to Manage Products page
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.shopping_cart, color: Constants().orange),
              title: Text("Manage Orders"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to Manage Orders page
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.analytics, color: Constants().orange),
              title: Text("Sales Analytics"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to Sales Analytics page
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.local_offer, color: Constants().orange),
              title: Text("Promotions"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to Promotions page
              },
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.monetization_on, color: Constants().orange),
              title: Text("Payouts"),
              trailing: Icon(Icons.arrow_forward_ios),
              onTap: () {
                // Navigate to Payouts page
              },
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {
                // Handle logout
              },
              icon: Icon(
                Icons.logout,
                color: Colors.white,
              ),
              label: Text(
                "Logout",
                style: TextStyle(color: Colors.white),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Constants().orange,
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
