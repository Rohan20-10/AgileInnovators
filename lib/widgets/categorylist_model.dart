import 'package:ecommerce/pages/home_page.dart';
import 'package:ecommerce/pages/item_details.dart';
import 'package:flutter/material.dart';


class CategoryListModel extends StatelessWidget {
  final List<Map<String,dynamic>> categoryProducts;
  final String header;
  CategoryListModel({
    required this.categoryProducts,
    required this.header,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(header),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: categoryProducts.length,
              gridDelegate:
              const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio:
                3 / 4.5, // Adjust the aspect ratio as needed
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
              ),
              itemBuilder: (context, index) {
                final product = categoryProducts[index];
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
                  child: TrendingProductCard(product: product),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}


