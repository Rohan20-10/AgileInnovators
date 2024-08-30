import 'package:ecommerce/pages/item_details.dart';
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
      appBar: AppBar(
        title: const Text("Name"),
        centerTitle: true,
        backgroundColor: Colors.yellow.shade900,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SearchWidget(),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Container(
                height: 160,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.yellow.shade900,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10),
                  child: PageView(
                    children: [
                      _buildPageViewItem('assets/img/Product1.jpg'),
                      _buildPageViewItem('assets/img/Product2.jpg'),
                      _buildPageViewItem('assets/img/Product3.jpg'),
                      _buildPageViewItem('assets/img/Product4.webp'),
                    ],
                  ),
                ),
              ),
            ),
            CategoryWidget(),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  const Text(
                    "Trending Products",
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
                              builder: (context) => ItemDetails(
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
    );
  }

  Widget _buildPageViewItem(String imagePath) {
    return Stack(
      fit: StackFit.expand,
      children: [
        Image.asset(
          imagePath,
          fit: BoxFit.contain,
        ),
        Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Colors.black.withOpacity(0.2),
                Colors.transparent,
              ],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter,
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTrendingProductCard(Map<String, dynamic> product) {
    return Card(
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.2,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.asset(
                  product['image'],
                  fit: BoxFit.cover,
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
              style: const TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.star, size: 16, color: Colors.orange),
                    Text(
                      product['rating'] + ' (' + product['reviews'] + ')',
                      style: const TextStyle(fontSize: 12),
                    ),
                  ],
                ),
                IconButton(
                  icon: const Icon(Icons.favorite_border, size: 20),
                  onPressed: () {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
