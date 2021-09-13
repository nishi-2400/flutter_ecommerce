import 'package:ecommerce/widgets/feeds_products.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class FeedsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StaggeredGridView.countBuilder(
        padding: EdgeInsets.only(right: 8, left: 8),
        crossAxisCount: 6,
        itemCount: 8,
        itemBuilder: (BuildContext context, int index) => FeedProducts(),
        staggeredTileBuilder: (int index) => new StaggeredTile.count(3, index.isEven ? 5 : 6),
        mainAxisSpacing: 8.0,
        crossAxisSpacing: 8.0,
      ),
      // 通常のグリッドビュー
      // body: GridView.count(
      //   childAspectRatio: 170 / 290,
      //   crossAxisCount: 2,
      //   crossAxisSpacing: 5,
      //   mainAxisSpacing: 5,
      //   children: List.generate(100, (index) => FeedProducts()),
      // ),
    );
  }
}
