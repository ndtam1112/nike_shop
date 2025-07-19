import 'package:flutter/material.dart';
import 'package:nike_shop/models/shoe.dart';

class Cart extends ChangeNotifier {
  //list of shoes for sale
  List<Shoe> shoeShop = [
    Shoe(
      name: 'Jordan 1',
      price: '220',
      description: 'aaaaaaaa',
      imagePath: 'lib/images/air-max-dn8-shoes-3gEhDeZq.png',
    ),
    Shoe(
      name: 'Jordan 1',
      price: '220',
      description: 'bbbbbbbb',
      imagePath: 'lib/images/p-6000-shoes-QcQbpx.png',
    ),
    Shoe(
      name: 'Jordan 1',
      price: '220',
      description: 'bbbbbbbb',
      imagePath: 'lib/images/pegasus-road-running-shoes-XrUfC.png',
    ),
    Shoe(
      name: 'Jordan 1',
      price: '220',
      description: 'bbbbbbbbbbbb',
      imagePath: 'lib/images/reactx-rejuven8-shoes-zVR5Bq.png',
    ),
  ];
  // list of items in user cart
  List<Shoe> userCart = [];

  // get list of shoes for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  // get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  // add items to cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  // remove item from cart
  void removeItemFromCart(Shoe shoe) {
    userCart.remove(shoe);
    notifyListeners();
  }
}
