import 'package:ecommerce/widgets/categorylist_model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  CategoryPage({super.key});

  List<String> _category = [
    "Puja Samagri",
    "Footwear",
    "Traditional Attire",
    "Regional Foods & Sweets",
    "Home Decor",
    "Jewelry & Accessories",
    "Handicrafts",
    "Festive Items",
  ];

  List<String> _images = [
    "assets/img/category_img/puja.jpeg",
    "assets/img/category_img/footwear.jpg",
    "assets/img/category_img/traditional.jpg",
    "assets/img/category_img/food.png",
    "assets/img/category_img/homedecor.jpeg",
    "assets/img/category_img/jewellery.png",
    "assets/img/category_img/handicraft.jpg",
    "assets/img/category_img/puja.jpeg", // festive item image update
  ];
  // dummy data

  final List<Map<String, dynamic>> pujaProducts = [
    {
      'image': 'assets/img/Product3.jpg',
      'name': 'Krishna Idol',
      'price': 999,
      'rating': '4.70',
      'reviews': '30',
    },
    {
      'image': 'assets/img/Product4.webp',
      'name': 'HawanKund',
      'price': 415,
      'rating': '4.80',
      'reviews': '25',
    },
  ];
  final List<Map<String, dynamic>> footwearProducts = [
    {
      'image': 'assets/img/category_img/footwear.jpg',
      'name': 'Juttis',
      'price': 1099,
      'rating': '4.50',
      'reviews': '15',
    },
    {
      'image': 'assets/img/category_img/footwear.jpg',
      'name': 'Kolhapuri Sandals',
      'price': 899,
      'rating': '4.60',
      'reviews': '20',
    },
    {
      'image': 'assets/img/category_img/footwear.jpg',
      'name': 'Leather Mojari',
      'price': 799,
      'rating': '4.40',
      'reviews': '10',
    },
  ];

  final List<Map<String, dynamic>> clothesProducts = [
    {
      'image': 'assets/img/Product2.jpg',
      'name': 'Silk Kurta',
      'price': 699,
      'rating': '4.00',
      'reviews': '4',
    },
    {
      'image': 'assets/img/Product2.jpg',
      'name': 'Banarasi Saree',
      'price': 1599,
      'rating': '4.80',
      'reviews': '25',
    },
    {
      'image': 'assets/img/Product2.jpg',
      'name': 'Sherwani Set',
      'price': 2999,
      'rating': '4.70',
      'reviews': '18',
    },
  ];

  final List<Map<String, dynamic>> sweetsProducts = [
    {
      'image': 'assets/img/category_img/food.png',
      'name': 'Gulab Jamun (1kg)',
      'price': 350,
      'rating': '4.00',
      'reviews': '4',
    },
    {
      'image': 'assets/img/category_img/food.png',
      'name': 'Rasgulla (1kg)',
      'price': 400,
      'rating': '4.50',
      'reviews': '12',
    },
    {
      'image': 'assets/img/category_img/food.png',
      'name': 'Kaju Katli (500g)',
      'price': 650,
      'rating': '4.80',
      'reviews': '30',
    },
  ];



  List<List<Map<String, dynamic>>> get categoryProducts => [
    pujaProducts,
    footwearProducts,
    clothesProducts,
    sweetsProducts,
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Categories'),
      ),
      body: SingleChildScrollView(
        child: GridView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: _category.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 3.5,
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
          ),
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                if(index<categoryProducts.length){
                  Navigator.push(context,MaterialPageRoute(builder: (context)=> CategoryListModel(categoryProducts: categoryProducts[index],header: _category[index],)));

                }
              },
              child: ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      _images[index],
                      fit: BoxFit.cover,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            Colors.black.withOpacity(0.2),
                            Colors.transparent,
                          ],
                          stops: [0.7, 1.0],
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomLeft,
                      child: Container(
                        color: Colors.transparent,
                        padding: EdgeInsets.all(8),
                        child: Text(
                          _category[index],
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
