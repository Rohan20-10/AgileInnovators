import 'package:ecommerce/pages/user_account_pages/my_address.dart';
import 'package:ecommerce/pages/user_account_pages/my_order.dart';
import 'package:ecommerce/pages/user_account_pages/my_profile.dart';
import 'package:ecommerce/widgets/constants.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AccountPage extends StatelessWidget {
  const AccountPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Account"),
        centerTitle: true,

      ),
      body:
      Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: CircleAvatar(
                  backgroundImage: AssetImage("assets/img/frameHome1.jpeg",),
                  radius: 35,),
              ),
              SizedBox(width: 5,),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 12.0,left: 8.0),
                    child: Text("Rutvik Bangar",style: TextStyle(fontSize: 18,fontWeight: FontWeight.w600),),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text("rrb@gmail.com",style: TextStyle(fontSize: 15,color: Colors.grey),),
                  ),

                ],
              )
            ],
          ),

          SizedBox(height: 40,),
          ProfileListTile(title: "Profile", leading:Icons.perm_identity, page: MyProfilePage()),
          Padding(padding: EdgeInsets.only(left: 16,right: 16),child: Divider(color: Colors.grey.shade200,),),
          ProfileListTile(title: "My orders", leading: Icons.shopping_bag_outlined, page: MyOrderPage()),
          Padding(padding: EdgeInsets.only(left: 16,right: 16),child: Divider(color: Colors.grey.shade200,),),
          ProfileListTile(title: "Addresses", leading: Icons.location_on_outlined, page: MyAddressesPage()),
          SizedBox(height: 30,),
          Center(
            child: GestureDetector(
              onTap: ()  {
                // signout function

              },
              child: Container(
                alignment: Alignment.center,
                width: 85,
                height: 45,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(color: Colors.grey.shade400)
                ),
                child: Text("Log Out",style: TextStyle(color: Constants().primarycolor,fontWeight: FontWeight.w700),),
              ),
            ),
          )

        ],
      ),
    );





  }
}


class ProfileListTile extends StatelessWidget {
  String title;
  IconData leading;

  Widget page;

  ProfileListTile({Key? key,required this.title,required this.leading,required this.page }):super(key: key);



  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder:(context)=> page));
      },
      leading: Icon(leading),
      title: Text(title),
      trailing: Icon(Icons.arrow_forward_ios),

    );
  }
}
