import 'package:ecommerce/widgets/constants.dart';
import 'package:flutter/material.dart';

class Order extends StatefulWidget {
  @override
  _OrderState createState() => _OrderState();
}

class _OrderState extends State<Order> {
  String _selectedStatus = 'All';

  // Sample order data
  final List<Map<String, dynamic>> allOrders = [
    {"orderId": "12345", "totalPrice": 250.0, "status": "Processing"},
    {"orderId": "67890", "totalPrice": 150.0, "status": "Shipped"},
    {"orderId": "54321", "totalPrice": 300.0, "status": "Delivered"},
    {"orderId": "98765", "totalPrice": 100.0, "status": "Delivered"},
    {"orderId": "11223", "totalPrice": 175.0, "status": "Processing"},
    {"orderId": "44556", "totalPrice": 200.0, "status": "Shipped"},
    {"orderId": "77889", "totalPrice": 130.0, "status": "Delivered"},
    {"orderId": "99001", "totalPrice": 250.0, "status": "Processing"},
  ];

  final List<Map<String, dynamic>> previousOrders = [
    {"orderId": "54321", "totalPrice": 300.0, "status": "Delivered"},
    {"orderId": "98765", "totalPrice": 100.0, "status": "Delivered"},
    {"orderId": "77889", "totalPrice": 130.0, "status": "Delivered"},
  ];

  List<Map<String, dynamic>> get filteredOrders {
    if (_selectedStatus == 'All') {
      return allOrders;
    }
    return allOrders.where((order) => order['status'] == _selectedStatus).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Orders",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: [
          // Current Orders Section
          Text(
            "Current Orders",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "Filter:",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
              DropdownButton<String>(
                value: _selectedStatus,
                items: <String>['All', 'Processing', 'Shipped', 'Delivered']
                    .map((status) => DropdownMenuItem<String>(
                          value: status,
                          child: Text(status),
                        ))
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    _selectedStatus = value!;
                  });
                },
              ),
            ],
          ),
          SizedBox(height: 10),
          ...filteredOrders.map((order) => OrderCard(order: order)).toList(),
          SizedBox(height: 20),

          // Previous Orders Section
          Text(
            "Previous Orders",
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 10),
          ...previousOrders.map((order) => OrderCard(order: order)).toList(),
        ],
      ),
    );
  }
}

class OrderCard extends StatelessWidget {
  final Map<String, dynamic> order;

  OrderCard({required this.order});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.only(bottom: 16.0),
      child: ListTile(
        tileColor: Constants().grey,
        title: Text(
          "Order ID: ${order['orderId']}",
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("Total Price: \$${order['totalPrice']}"),
            Text("Status: ${order['status']}"),
          ],
        ),
        trailing: Icon(Icons.arrow_forward_ios, color: Colors.grey),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => OrderDetailsPage(order: order),
            ),
          );
        },
      ),
    );
  }
}

class OrderDetailsPage extends StatelessWidget {
  final Map<String, dynamic> order;

  OrderDetailsPage({required this.order});

  @override
  Widget build(BuildContext context) {
    // Sample order item data
    final List<Map<String, dynamic>> orderItems = [
      {"name": "Product 1", "quantity": 2, "price": 50.0, "image": "assets/img/Product1.jpg"},
      {"name": "Product 2", "quantity": 1, "price": 100.0, "image": "assets/img/Product2.jpg"},
    ];

    // Calculate total price
    final double totalPrice = orderItems.fold(0.0, (sum, item) => sum + item["price"]! * item["quantity"]!);

    // Sample delivery address
    final String deliveryAddress = "123 International Road, New York, USA";

    return Scaffold(
      appBar: AppBar(
        title: Text("Order Details"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
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
                      "Order ID: ${order['orderId']}",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Order Date: 2024-08-30", // Replace with actual date
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Status: ${order['status']}",
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.grey[600],
                      ),
                    ),
                    SizedBox(height: 20),
                    Text(
                      "Delivery Address",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      deliveryAddress,
                      style: TextStyle(
                        fontSize: 16,
                        color: Colors.black,
                      ),
                    ),
                    if (!deliveryAddress.contains("India"))
                      Padding(
                        padding: const EdgeInsets.only(top: 10.0),
                        child: Text(
                          "International Shipping",
                          style: TextStyle(
                            fontSize: 14,
                            color: Colors.red[600],
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    SizedBox(height: 20),
                    Text(
                      "Items",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 10),
                    ...orderItems
                        .map((item) => OrderItemCard(item: item))
                        .toList(),
                    SizedBox(height: 20),
                    Divider(color: Colors.grey),
                    SizedBox(height: 10),
                    Text(
                      "Total Price: \$${totalPrice}",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
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

class OrderItemCard extends StatelessWidget {
  final Map<String, dynamic> item;

  OrderItemCard({required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      margin: const EdgeInsets.symmetric(vertical: 8.0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Container(
              width: 70,
              height: 70,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                  image: AssetImage(item["image"]!),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(width: 16),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  item['name']!,
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Quantity: ${item['quantity']}",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  "Price: \$${item['price']}",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey[600],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
