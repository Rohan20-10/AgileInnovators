import 'package:ecommerce/models/cart_model.dart';
import 'package:ecommerce/pages/account_page.dart';
import 'package:ecommerce/pages/cart_page.dart';
import 'package:ecommerce/pages/category_page.dart';
import 'package:ecommerce/pages/home_page.dart';
import 'package:ecommerce/widgets/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

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
            icon: Stack(
              children: [
                Icon(
                  Icons.shopping_cart_outlined,
                  size: 28,
                ),
                Consumer<CartModel>(builder: (context,cart,child){
                  return   Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      //padding: EdgeInsets.all(1),
                      decoration: BoxDecoration(
                        color: cart.cartitem.isEmpty ? Colors.transparent : Colors.red,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      constraints: BoxConstraints(
                        minWidth: 16,
                        minHeight: 16,
                      ),
                      child: Text(
                        cart.cartitem.isEmpty ? "" :
                        cart.cartitem.length.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                        ),
                        textAlign: TextAlign.center,
                      ),

                    ),
                  );
                }),

              ],
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
