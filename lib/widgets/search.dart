import 'package:ecommerce/widgets/constants.dart';
import 'package:flutter/material.dart';

class SearchWidget extends StatelessWidget {
  const SearchWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(14.0),
      child: Container(
        decoration: BoxDecoration(
          color: Constants().lightgrey,
          borderRadius: BorderRadius.circular(22),

        ),
        child: ClipRRect(

          borderRadius: BorderRadius.circular(22),
          child: TextField(

            decoration: InputDecoration(

              fillColor: Constants().lightgrey,
              filled: true,
              hintText: "Search...",
              hintStyle: TextStyle(color: Constants().darkgrey),
              border: OutlineInputBorder(
                borderSide: BorderSide.none,
                borderRadius: BorderRadius.circular(10),
              ),
              prefixIcon: Icon(Icons.search_outlined, color: Colors.grey),
              contentPadding: EdgeInsets.symmetric(vertical: 15),
              
              suffixIcon:IconButton(onPressed: (){}, icon: Icon(Icons.tune,color: Constants().blackcolor,))
            ),
          ),
        ),
      ),
    );
  }
}