
import 'package:flutter/material.dart';

class CartItem{
  // Cart Model add more required parameter afterwards

  final String name;
  final String image_url;
  final int price;
  int no_of_item;

  CartItem({required this.name,this.no_of_item = 1 ,required this.image_url, required this.price});
}

class CartModel extends ChangeNotifier{
  List<CartItem> _cartitem = [];

  List<CartItem> get cartitem => _cartitem;

  //add product to the cart
  void addItem({
    required name,
    required image_url,
    required price,
  }){
    var currentitem = _cartitem.firstWhere((item) =>item.name == name,
    orElse: () => CartItem(name: name, image_url: image_url, price: price)
    );
    if(_cartitem.contains(currentitem)){
      currentitem.no_of_item++;
    }
    else{
      _cartitem.add(currentitem);
    }
    notifyListeners();
  }

  // get cart Item
getItemCartStatus(String name,String image_url,int price){
    var currentitem = _cartitem.firstWhere((item) => item.name == name,orElse: ()=>CartItem(
        name: name,
        image_url: image_url,
        price: price,
        no_of_item: 0,

    ));
    return currentitem;
}
// remove item completely from cart
 void removeItemCompletely(CartItem cartItem){
    _cartitem.remove(cartItem);
    notifyListeners();
 }
 void decreaseItem(CartItem thisItem){
    if(_cartitem.contains(thisItem)){
      if(thisItem.no_of_item == 1){
        _cartitem.remove(thisItem);
      }else{
        thisItem.no_of_item--;
      }


    }
    notifyListeners();
 }
  int getTotalPrice(){
    int total =0;
    for(int i=0 ; i<_cartitem.length ; i++){
      total = total + (_cartitem[i].price)*_cartitem[i].no_of_item;

    }
    return total;
  }


}