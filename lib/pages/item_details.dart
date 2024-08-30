import 'package:ecommerce/home.dart';
import 'package:ecommerce/pages/cart_page.dart';
import 'package:flutter/material.dart';

class ItemDetails extends StatefulWidget {
  final String image;
  final String name;
  final String price;
  final String rating;
  final String reviews;

  const ItemDetails({
    required this.image,
    required this.name,
    required this.price,
    required this.rating,
    required this.reviews,
    super.key,
  });

  @override
  State<ItemDetails> createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<ItemDetails> {
  String? selectedReview;
  bool isReviewExpanded = false;

  @override
  Widget build(BuildContext context) {
    // Hardcoded reviews for the dropdown
    final List<String> reviewsList = [
      'Great product, very comfortable and stylish!',
      'The quality is amazing, worth the price!',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text("Product Details"),
        backgroundColor: Colors.yellow.shade900,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
          icon: const Icon(Icons.arrow_back_rounded, color: Colors.black),
        ),
        elevation: 0,
      ),
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Center(
                      child: Text(
                        widget.name,
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    const SizedBox(height: 16),
                    Center(
                      child: Card(
                        elevation: 4,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(16.0),
                          child: Image.asset(
                            widget.image,
                            height: 200,
                            fit: BoxFit.contain,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        Text(
                          '${widget.price}',
                          style: const TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    Card(
                      elevation: 4,
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Text(
                          'Description\n\nThis lightweight fleece top offers warmth and comfort with a stylish quarter-zip design, perfect for traditional outings.',
                          style: const TextStyle(color: Colors.grey),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                    Row(
                      children: [
                        const Icon(Icons.star, color: Colors.yellow),
                        const SizedBox(width: 4),
                        Text(
                          widget.rating,
                          style: const TextStyle(
                              fontSize: 16, fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(width: 4),
                        Text(
                          '(${widget.reviews} reviews)',
                          style:
                              const TextStyle(fontSize: 16, color: Colors.grey),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16),
                    // Review Dropdown
                    Card(
                      elevation: 2,
                      child: ListTile(
                        title: const Text(
                          'Reviews',
                          style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        trailing: Icon(
                          isReviewExpanded
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                        ),
                        onTap: () {
                          setState(() {
                            isReviewExpanded = !isReviewExpanded;
                          });
                        },
                      ),
                    ),
                    if (isReviewExpanded)
                      Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: reviewsList.map((review) {
                            return Padding(
                              padding:
                                  const EdgeInsets.symmetric(vertical: 4.0),
                              child: Text(review),
                            );
                          }).toList(),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
          // Fixed Bottom Bar
          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => CartPage()));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(10),
                        bottomLeft: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: const Text(
                    'ADD TO CART',
                    style: TextStyle(color: Colors.deepOrange),
                  ),
                ),
              ),
              Expanded(
                child: ElevatedButton(
                  onPressed: () {
                    // Buy Now functionality
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow.shade900,
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.only(
                        topRight: Radius.circular(0),
                        bottomRight: Radius.circular(10),
                      ),
                    ),
                  ),
                  child: const Text(
                    'BUY NOW',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
