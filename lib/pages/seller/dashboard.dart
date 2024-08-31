import 'package:ecommerce/widgets/constants.dart';
import 'package:flutter/material.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    // Data for the grid items
    final List<Map<String, dynamic>> gridData = [
      {"title": "Products", "value": "4", "icon": Icons.inventory_2_outlined},
      {"title": "Rating", "value": "4.1", "icon": Icons.star_outline},
      {"title": "Total Orders", "value": "20", "icon": Icons.list_alt_outlined},
      {
        "title": "Total Sales",
        "value": "₹10000",
        "icon": Icons.attach_money_outlined
      },
    ];

    // Sample data for Top Products
    final List<Map<String, String>> topProducts = [
      {
        "name": "Product 1",
        "sales": "12 Sold",
        "image": "assets/img/Product4.webp"
      },
      {
        "name": "Product 2",
        "sales": "9 Sold",
        "image": "assets/img/Product3.jpg"
      },
      {
        "name": "Product 3",
        "sales": "5 Sold",
        "image": "assets/img/Product2.jpg"
      },
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Dashboard",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Grid section
              GridView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: gridData.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  childAspectRatio: 1.2,
                ),
                itemBuilder: (context, index) {
                  return Card(
                    color: Constants().grey,
                    elevation: 4,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(12.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Expanded(
                                child: Text(
                                  gridData[index]["title"]!,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                              Icon(
                                gridData[index]["icon"],
                                size: 36,
                                color: Constants().orange,
                              ),
                            ],
                          ),
                          SizedBox(height: 5),
                          Text(
                            gridData[index]["value"]!,
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.black,
                            ),
                          ),
                          Spacer(),
                        ],
                      ),
                    ),
                  );
                },
              ),
              SizedBox(height: 20),
              // Top Products section
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "Top Products",
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
              ),
              SizedBox(height: 10),
              // Adjust height of ListView.builder to avoid overflow
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: topProducts.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 12.0),
                      child: Card(
                        color: Constants().grey,
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: Container(
                          width: 140,
                          padding: const EdgeInsets.all(12.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // Product image
                              Container(
                                height: 100,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                    image: AssetImage(
                                        topProducts[index]["image"]!),
                                    fit: BoxFit.cover,
                                  ),
                                ),
                              ),
                              SizedBox(height: 10),
                              // Product name
                              Text(
                                topProducts[index]["name"]!,
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black,
                                ),
                                overflow: TextOverflow.ellipsis,
                              ),
                              SizedBox(height: 5),
                              // Sales count
                              Text(
                                topProducts[index]["sales"]!,
                                style: TextStyle(
                                  fontSize: 12,
                                  color: Colors.grey[600],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
