import 'package:ecommerce/consts/my_icons.dart';
import 'package:ecommerce/screens/cart_empty.dart';
import 'package:ecommerce/screens/cart_full.dart';
import 'package:flutter/material.dart';


class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    List products = [];
    return !products.isEmpty ? Scaffold(
      // カートが空
      body: CartEmpty(),
    ) : Scaffold(
      //　カートに商品有り
      bottomSheet: checkoutSection(context),
      appBar: AppBar(
        title: Text('Cart Item Count'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(MyIcons.trash)),
        ],
      ),
        body: Container(
          margin: EdgeInsets.only(bottom: 60),
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (BuildContext context, int index) => CartFull(),
          ),
        ),
    );
  }

  Widget checkoutSection(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border(top: BorderSide(color: Colors.grey, width: 0.5)),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              flex: 2,
              child: Material(
                color: Colors.red,
                borderRadius: BorderRadius.circular(30),
                child: InkWell(
                  onTap: () {},
                  borderRadius: BorderRadius.circular(30),
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Checkout',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Theme.of(context).textSelectionColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Spacer(),
            Text(
              'Total: ',
              style: TextStyle(
                color: Theme.of(context).textSelectionColor,
                fontSize: 18,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              '\$120.00',
              style: TextStyle(
                color: Colors.blue,
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
