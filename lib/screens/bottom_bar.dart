import 'package:ecommerce/consts/my_icons.dart';
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
  late List<Map<String, Widget>> _pages;
  int _selectedIndex = 0;

  @override
  void initState() {
    _pages = [
      {
        'page': HomeScreen(),
        'title': Text('Home Screen'),
      },
      {
        'page': FeedsScreen(),
        'title': Text('Feeds Screen'),
      },
      {
        'page': SearchScreen(),
        'title': Text('Search Screen'),
      },
      {
        'page': CartScreen(),
        'title': Text('Cart Screen'),
      },
      {
        'page': UserInfoScreen(),
        'title': Text('UserInfo Screen'),
      },
    ];
    super.initState();
  }

  // 表示するページを変更
  void _selectedPage(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(centerTitle: true, title: _pages[_selectedIndex]['title']),
      body: _pages[_selectedIndex]['page'],
      bottomNavigationBar: BottomAppBar(
        notchMargin: 3,
        shape: CircularNotchedRectangle(),
        clipBehavior: Clip.antiAlias,
        child: Container(
          // height: kBottomNavigationBarHeight,
          decoration: BoxDecoration(border: Border(top: BorderSide(width: 0.5))),
          child: BottomNavigationBar(
            onTap: _selectedPage,
            backgroundColor: Theme.of(context).primaryColor,
            // ignore: deprecated_member_use
            unselectedItemColor: Theme.of(context).textSelectionColor,
            selectedItemColor: Colors.purple,
            selectedLabelStyle: TextStyle(fontSize: 16),
            currentIndex: _selectedIndex,
            items: [
              BottomNavigationBarItem(icon: Icon(MyIcons.home), tooltip: 'Home', label: 'Home'),
              BottomNavigationBarItem(icon: Icon(MyIcons.rss), tooltip: 'Feeds', label: 'Feeds'),
              BottomNavigationBarItem(activeIcon: null, icon: Icon(null), tooltip: 'Search', label: 'Search'),
              BottomNavigationBarItem(icon: Icon(MyIcons.bag), tooltip: 'Cart', label: 'Cart'),
              BottomNavigationBarItem(icon: Icon(MyIcons.user), tooltip: 'User', label: 'User'),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.miniCenterDocked,
      floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.purple,
          tooltip: 'Search',
          elevation: 5,
          child: (Icon(MyIcons.search)),
          onPressed: () {
            setState(() {
              _selectedIndex = 2;
            });
            },
      ),
    );
  }
}
