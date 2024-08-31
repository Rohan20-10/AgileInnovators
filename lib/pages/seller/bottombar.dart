import 'package:ecommerce/pages/seller/dashboard.dart';
import 'package:ecommerce/pages/seller/order.dart';
import 'package:ecommerce/pages/seller/products.dart';
import 'package:ecommerce/pages/seller/profile.dart';
import 'package:ecommerce/widgets/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

class _BottombarState extends State<Bottombar> {
  int _pageIndex = 0;
  List<Widget> _pages = [
    const Dashboard(),
    const Products(),
    Order(),
    Profile()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: _pageIndex,
        onTap: (value) {
          setState(() {
            _pageIndex = value;
          });
        },
        unselectedItemColor: Colors.black,
        selectedItemColor: Constants().orange,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard_outlined),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.inventory_2_outlined,
              size: 28,
            ),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_outlined),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.person_2_outlined,
              size: 30,
            ),
            label: 'Profile',
          ),
        ],
      ),
      body: _pages[_pageIndex],
    );
  }
}
