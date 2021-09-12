import 'package:ecommerce/widgets/feeds_products.dart';
import 'package:flutter/material.dart';

class FeedsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: FeedProducts(),
      ),
    );
  }
}
