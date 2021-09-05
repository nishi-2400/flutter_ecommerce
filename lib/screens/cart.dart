import 'package:ecommerce/screens/cart_empty.dart';
import 'package:ecommerce/screens/cart_full.dart';
import 'package:flutter/material.dart';


class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List products = [];
    return Scaffold(
      body: products.isEmpty ? CartEmpty() : CartFull(),
    );
  }
}
