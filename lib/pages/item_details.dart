import 'package:ecommerce/home.dart';
import 'package:ecommerce/pages/cart_page.dart';
import 'package:ecommerce/widgets/constants.dart';
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
  int _selectedIndex = 0; // Index for the selected tab

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    final Sheight = size.height;
    final Swidth = size.width;

    // Hardcoded reviews for the dropdown
    final List<String> reviewsList = [
      'Great product, very comfortable and stylish!',
      'The quality is amazing, worth the price!',
    ];

    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(20),
                          bottomLeft: Radius.circular(20),
                        ),
                        child: Image.asset(
                          widget.image,
                          height: Sheight * 0.35,
                          width: Swidth,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 16),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                          widget.name,
                          style: TextStyle(
                              fontSize: 24, fontWeight: FontWeight.w600),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 12.0),
                        child: Text(
                          "${widget.price}",
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.w600),
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        children: [
                          Icon(Icons.star, color: Colors.green),
                          const SizedBox(width: 4),
                          Text(
                            widget.rating,
                            style: const TextStyle(
                                fontSize: 16, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(width: 4),
                          Text(
                            '(${widget.reviews} reviews)',
                            style: const TextStyle(
                                fontSize: 16, color: Colors.grey),
                          ),
                        ],
                      ),

                      const SizedBox(height: 20),
                      Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 10.0),
                            child: Row(
                                  children: [
                                    // Description Button
                                    Expanded(
                                      child: SizedBox(
                                        width: 50,
                                        height: 45,
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor: _selectedIndex == 0 ? Constants().primarycolor : Colors.white,

                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(30), // Circular rectangular shape
                                            ),
                                            padding: EdgeInsets.symmetric(vertical: 12), // Adjust padding as needed
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _selectedIndex = 0;
                                            });
                                          },
                                          child: Text(
                                            'Description',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: _selectedIndex == 0 ? FontWeight.bold : FontWeight.normal,
                                              color: _selectedIndex ==0? Colors.white : Constants().blackcolor
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),

                                    // Reviews Button
                                    Expanded(
                                      child: SizedBox(
                                        width: 50,
                                        height: 45,
                                        child: TextButton(
                                          style: TextButton.styleFrom(
                                            backgroundColor: _selectedIndex == 1 ? Constants().primarycolor : Colors.white,

                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(30), // Circular rectangular shape
                                            ),
                                            padding: EdgeInsets.symmetric(vertical: 12), // Adjust padding as needed
                                          ),
                                          onPressed: () {
                                            setState(() {
                                              _selectedIndex = 1;
                                            });
                                          },
                                          child: Text(
                                            'Reviews',
                                            style: TextStyle(
                                              fontSize: 16,
                                              fontWeight: _selectedIndex == 1 ? FontWeight.bold : FontWeight.normal,
                                                color: _selectedIndex ==1? Colors.white : Constants().blackcolor
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                          ),

                          if (_selectedIndex == 0) // Description Tab Content
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(left: 12.0),
                                    child: Text(
                                      'This lightweight fleece top offers warmth and comfort with a stylish quarter-zip design, perfect for traditional outings.',
                                      style: TextStyle(color: Constants().darkgrey),
                                    ),
                                  ),
                                ],
                              ),
                            ),

                          if (_selectedIndex == 1) // Reviews Tab Content
                            Padding(
                              padding: const EdgeInsets.all(16.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [

                                  ...reviewsList.map((review) {
                                    return

                                      Text(review,
                                      style: TextStyle(color: Constants().darkgrey),);

                                  }),
                                ],
                              ),
                            ),

                    ],
                  ),
                ),
              ),

              // Fixed Bottom Bar

              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Increase/Decrease Quantity Buttons
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(30),
                      ),
                      child: Row(
                        children: [
                          IconButton(
                            icon: Icon(Icons.remove, color: Colors.white),
                            onPressed: () {
                              // Decrease quantity functionality
                            },
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8.0),
                            child: Text(
                              '1', // Update this with the dynamic quantity value
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Icon(Icons.add, color: Colors.white),
                            onPressed: () {
                              // Increase quantity functionality
                            },
                          ),
                        ],
                      ),
                    ),
                    // Add to Cart Button
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Constants().primarycolor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30),
                            ),
                            padding: EdgeInsets.symmetric(vertical: 16.0),
                          ),
                          onPressed: () {
                            // Add to cart functionality
                          },
                          child: Text(
                            'Add to Cart',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: AppBar(
              backgroundColor: Colors.transparent,
            ),
          ),
        ]),
      ),
    );
  }
}
