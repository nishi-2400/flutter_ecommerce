import 'package:ecommerce/provider/dark_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';
import 'package:provider/provider.dart';

class UserInfoScreen extends StatefulWidget {
  @override
  _UserInfoScreenState createState() => _UserInfoScreenState();
}

class _UserInfoScreenState extends State<UserInfoScreen> {
  @override
  Widget build(BuildContext context) {
    // テーマ変更用のDarkThemeProvider
    final themeChange = Provider.of<DarkThemeProvider>(context);

    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: userTitle('User Info'),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          userListTile(context, 'Email', 'Email sub', 0),
          userListTile(context, 'Phone number', 'SubTitle', 1),
          userListTile(context, 'Shipping address', 'SubTitle', 2),
          userListTile(context, 'Joined date', 'date', 3),
          Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: userTitle('User Setting'),
          ),
          Divider(
            thickness: 1,
            color: Colors.grey,
          ),
          // ListTileSwitchによりリストタイルの生成:NightThemeの切り替えスイッチ
          ListTileSwitch(
            value: themeChange.darkTheme,
            leading: Icon(Icons.nights_stay_outlined),
            onChanged: (value) {
              setState(() {
                themeChange.darkTheme = value;
              });
            },
            visualDensity: VisualDensity.comfortable,
            switchType: SwitchType.cupertino,
            switchActiveColor: Colors.indigo,
            title: Text('Dark Theme'),
          ),
          userListTile(context, 'Logout', '', 4),
        ],
      ),
    );
  }

  List<IconData> _userTitleIcons = [
    Icons.email,
    Icons.phone,
    Icons.local_shipping,
    Icons.watch_later,
    Icons.exit_to_app_rounded
  ];

  Widget userListTile(BuildContext context, String title, String subTitle, int index) {
    return Material(
      color: Colors.transparent,
      child: InkWell(
        splashColor: Theme.of(context).splashColor,
        child: ListTile(
          title: Text(title),
          subtitle: Text(subTitle),
          leading: Icon(_userTitleIcons[index]),
          onTap: () {},
        ),
      ),
    );
  }

  Widget userTitle(String title) {
    return Text(
      title,
      style: TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 23,
      ),
    );
  }
}
