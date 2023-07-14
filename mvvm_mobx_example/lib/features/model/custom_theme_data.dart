import 'package:flutter/material.dart';
import 'package:mvvm_mobx_example/core/theme/dark_theme/dark_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/theme/light_theme/light_theme.dart';

class CustomThemeDataModal with ChangeNotifier {
  static late SharedPreferences _sharedPrefObject;
  bool _isLight = true;
  bool get isLight => _isLight;

  ThemeData get themeColor {
    return _isLight ? myLightTheme : myDarkTheme;
  }

  void toggleTheme() {
    _isLight = !_isLight;
    saveThemeToSharedPref(_isLight);
    notifyListeners();
  }

  Future<void> createSharedPrefObject() async {
    _sharedPrefObject = await SharedPreferences.getInstance();
  }

  void saveThemeToSharedPref(bool value) {
    _sharedPrefObject.setBool("themeName", value);
  }

  void loadThemeFromSharedPref() async {
    await createSharedPrefObject();
    if (_sharedPrefObject.getBool("themeName") == null) {
      _isLight = true;
    } else {
      _isLight = _sharedPrefObject.getBool("themeName")! ;
    }
  }
}
