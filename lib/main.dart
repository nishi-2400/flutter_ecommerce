import 'package:ecommerce/consts/theme_data.dart';
import 'package:ecommerce/provider/dark_theme_provider.dart';
import 'package:ecommerce/screens/bottom_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  DarkThemeProvider themeChangeNotifier = DarkThemeProvider();
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
        providers: [
          // 子ウィジェットがDarkThemeProviderを利用できるようにする
          ChangeNotifierProvider(create: (_) => themeChangeNotifier),
        ],
        // Consumer：notifyListeners()で通知された値を取得し、配下のウィジェットをリビルド
        child: Consumer<DarkThemeProvider>(
            builder: (context, themeData, child) {
              return MaterialApp(
                title: 'Flutter Demo',
                theme: Styles.themeData(themeChangeNotifier.darkTheme, context),
                home: BottomBarScreen(),
              );
            }),
    );
  }
}