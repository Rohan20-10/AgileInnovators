import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/pages/item_details.dart';
import 'package:ecommerce/widgets/constants.dart';
import 'package:ecommerce/widgets/search.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ecommerce/widgets/category.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // Example list of products
  final List<Map<String, String>> trendingProducts = [
    {
      'image': 'assets/img/Product1.jpg',
      'name': 'Pooja Samagri',
      'price': '₹1299',
      'rating': '4.50',
      'reviews': '15',
    },
    {
      'image': 'assets/img/Product2.jpg',
      'name': 'Silk Kurta',
      'price': '₹699',
      'rating': '4.00',
      'reviews': '4',
    },
    {
      'image': 'assets/img/Product3.jpg',
      'name': 'Krishna Idol',
      'price': '₹999',
      'rating': '4.70',
      'reviews': '30',
    },
    {
      'image': 'assets/img/Product4.webp',
      'name': 'HawanKund',
      'price': '₹415',
      'rating': '4.80',
      'reviews': '25',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              //Icons row change square icon.
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(
                    // padding: EdgeInsets.only(left: 8),
                      margin: EdgeInsets.only(left: 15),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Constants().lightgrey,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: IconButton(onPressed: () {},
                          icon: Icon(Icons.crop_square_rounded,
                            color: Constants().blackcolor,))),
                  Spacer(),
                  Container(
                    // padding: EdgeInsets.only(left: 8),
                      margin: EdgeInsets.only(right: 15),
                      width: 40,
                      height: 40,
                      decoration: BoxDecoration(
                        color: Constants().lightgrey,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: IconButton(onPressed: () {},
                          icon: Icon(Icons.notifications_none_rounded,
                              color: Constants().blackcolor))),

                ],
              ),
              const SearchWidget(),
              // Padding(
              //   padding: const EdgeInsets.all(10.0),
              //   child: Container(
              //     height: 160,
              //     width: double.infinity,
              //     decoration: BoxDecoration(
              //       color: Colors.yellow.shade900,
              //       borderRadius: BorderRadius.circular(10),
              //     ),
              //     child: ClipRRect(
              //
              //       borderRadius: BorderRadius.circular(10),
              //       child: PageView(
              //
              //         children: [
              //           _buildPageViewItem('assets/img/Product1.jpg'),
              //           _buildPageViewItem('assets/img/Product2.jpg'),
              //           _buildPageViewItem('assets/img/Product3.jpg'),
              //           _buildPageViewItem('assets/img/Product4.webp'),
              //         ],
              //       ),
              //     ),
              //   ),
              // ),
              SizedBox(height: 20,),
              CarouselSlider(
                items: [
                  Promoimage(imageurl: "assets/img/banner_img/banner1.png"),
                  Promoimage(imageurl: "assets/img/banner_img/banner2.png"),
                  Promoimage(imageurl: "assets/img/banner_img/banner3.png"),
                  Promoimage(imageurl: "assets/img/banner_img/banner4.png"),

                ],
                options: CarouselOptions(
                  viewportFraction: 1.5,
                  autoPlay: true,

                ),
              ),
              SizedBox(height: 35,),
              CategoryWidget(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(height: 10),
                    const Text(
                      "Special For You",
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 10),
                    GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      itemCount: trendingProducts.length,
                      gridDelegate:
                      const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio:
                        3 / 4.5, // Adjust the aspect ratio as needed
                        crossAxisSpacing: 10,
                        mainAxisSpacing: 10,
                      ),
                      itemBuilder: (context, index) {
                        final product = trendingProducts[index];
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) =>
                                    ItemDetails(
                                      image: product['image']!,
                                      name: product['name']!,
                                      price: product['price']!,
                                      rating: product['rating']!,
                                      reviews: product['reviews']!,
                                    ),
                              ),
                            );
                          },
                          child: _buildTrendingProductCard(product),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }



  Widget _buildTrendingProductCard(Map<String, dynamic> product) {
    return Container(
      decoration: BoxDecoration(
        color: Constants().lightgrey,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 9.0,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                const Spacer(),
                Container(
                  height: 32,
                  width: 32,
                  decoration: BoxDecoration(
                    color: Constants().primarycolor,
                    borderRadius: BorderRadius.only(

                      topRight: Radius.circular(15),
                      bottomLeft: Radius.circular(5)
                    ),
                  ),
                  child: IconButton(
                    icon: Icon(
                        Icons.favorite_border, size: 20, color: Colors.white),
                    onPressed: () {},
                    padding: EdgeInsets.zero,
                    alignment: Alignment.center,
                  ),
                ),
              ],
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: AspectRatio(
                aspectRatio: 1.2,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: Image.asset(
                    product['image'],
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              product['name'],
              style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 5),
            Text(
              product['price'],
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Constants().blackcolor,
              ),
            ),
           SizedBox(height: 5,),
            Row(
              children: [
                Icon(Icons.star, size: 16, color: Constants().primarycolor),
                Text(
                  product['rating'] + ' (' + product['reviews'] + ')',
                  style: const TextStyle(fontSize: 12),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}





class Promoimage extends StatelessWidget {
  final String imageurl;
  const Promoimage({
    Key? key,
    required this.imageurl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Image.asset(
        imageurl,
        fit: BoxFit.cover,height: 100,
      ),
      height: 100,
      width: MediaQuery.of(context).size.width * 0.90,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            offset: Offset(4.0, 4.0),
            color: Colors.grey,
            blurRadius: 15,
            spreadRadius: 1,
          ),
        ],
      ),
    );
  }
}