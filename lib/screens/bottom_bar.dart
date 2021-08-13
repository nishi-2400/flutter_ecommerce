import 'package:ecommerce/screens/cart.dart';
import 'package:ecommerce/screens/feeds.dart';
import 'package:ecommerce/screens/home.dart';
import 'package:ecommerce/screens/search.dart';
import 'package:ecommerce/screens/user_info.dart';
import 'package:flutter/material.dart';

class BottomBarScreen extends StatefulWidget {
  @override
  _BottomBarScreenState createState() => _BottomBarScreenState();
}

class _BottomBarScreenState extends State<BottomBarScreen> {
  // 表示するページ
  List _pages = [
    HomeScreen(),
    FeedsScreen(),
    SearchScreen(),
    CartScreen(),
    UserInfoScreen(),
  ];
  int _selectedIndex = 0;

  // 表示するページを変更
  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex],
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: BottomNavigationBar(
          onTap: _selectedPage,
          backgroundColor: Theme.of(context).primaryColor,
          // ignore: deprecated_member_use
          unselectedItemColor: Theme.of(context).textSelectionColor,
          selectedItemColor: Colors.purple,
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), tooltip: 'Home', label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.rss_feed), tooltip: 'Feeds', label: 'Feeds'),
            BottomNavigationBarItem(activeIcon: null, icon: Icon(null), tooltip: 'Search', label: 'Search'),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag), tooltip: 'Cart', label: 'Cart'),
            BottomNavigationBarItem(icon: Icon(Icons.person), tooltip: 'User', label: 'User'),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.purple,
        tooltip: 'Search',
        elevation: 5,
        child: (Icon(Icons.search)),
        onPressed: () {
          setState(() {
            _selectedIndex = 2;
          });
        },
      ),
    );
  }
}
