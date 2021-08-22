import 'package:flutter/material.dart';

class DarkThemeProvider with ChangeNotifier {
  bool _darkTheme = false;
  bool get darkTheme => _darkTheme;

  // UserInfoページのスイッチの切り替えで実行される
  set darkTheme (bool value) {
    _darkTheme = value;
    //このモデル内の状態変化を呼び出し元に通知
    notifyListeners();
  }
}