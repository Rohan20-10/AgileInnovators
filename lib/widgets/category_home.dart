import 'package:ecommerce/widgets/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class CategoryWidget extends StatelessWidget {
  CategoryWidget({super.key});
  final List<String> _categorytable = ['Clothes', 'Food', 'Handicrafts','Jewelry','Spices'];
  final List<String> _imageurl = [
    "https://i.postimg.cc/zGmyxQQ6/traditional.jpg",
    "https://i.postimg.cc/PJNJNxbc/food.avif",
    "https://i.postimg.cc/fLRqtnVp/handicraft.jpg",
    "https://i.postimg.cc/5NPv5s4c/jewellery.png",
    "https://i.postimg.cc/nL8hJmFS/spices.png"
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
          itemCount: _imageurl.length,
          itemBuilder: (context,index){
        return Padding(
          padding: const EdgeInsets.only(left: 10),
          child: Row(

            children: [
              GestureDetector(
                onTap: (){
                  // Access Category


                },
                child: Column(
                  children: [
                    Container(
                      height: 65,
                      width: 65,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(30),
                          image: DecorationImage(image: NetworkImage(_imageurl[index]),
                            fit: BoxFit.fill,
                          )
                      ),
                
                    ),
                    Text(_categorytable[index])
                  ],
                ),
              ),
              SizedBox(width: 5,),
            ],
          ),
        );

      }),
    );
  }
}
