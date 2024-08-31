import 'package:flutter/material.dart';

class MyOrderPage extends StatelessWidget {
  const MyOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Orders"),
        centerTitle: true,
      ),
      body: Center(
        child: Text("No Orders Yet"),
      ),
    );
  }
}
