import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            pinned: true,
            title: Text('Sliver Appbar'),
            centerTitle: true,
            expandedHeight: 200,
            backgroundColor: Colors.red,
          ),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Text('Hello World');
              }, childCount: 4),
          ),
          // SliverFillRemaining(
          //   child: Center(
          //       child: Text('Hello World')
          //   ),
          // ),
        ],
      )
    );
  }
}
