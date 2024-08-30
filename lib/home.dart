import 'package:ecommerce/pages/account_page.dart';
import 'package:ecommerce/pages/cart_page.dart';
import 'package:ecommerce/pages/category_page.dart';
import 'package:ecommerce/pages/home_page.dart';
import 'package:ecommerce/widgets/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  int _pageIndex = 0;
  List<Widget> _pages = [HomePage(), CartPage(), CategoryPage(), AccountPage()];
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
        selectedItemColor: Constants().primarycolor,
        items: [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.shopping_cart_outlined,
              size: 28,
            ),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Image.asset(
              'assets/img/category.png',
              height: 25,
            ),
            label: 'Category',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_circle_outlined,
              size: 30,
            ),
            label: 'Account',
          ),
        ],
      ),
      body: _pages[_pageIndex],
    );
  }
}
