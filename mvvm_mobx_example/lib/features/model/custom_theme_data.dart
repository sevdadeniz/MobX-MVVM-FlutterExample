import 'package:flutter/material.dart';
import 'package:mvvm_mobx_example/core/theme/dark_theme/dark_theme.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../core/theme/light_theme/light_theme.dart';

class CustomThemeDataModal with ChangeNotifier {
  static late SharedPreferences _sharedPrefObject;
  late bool _isLight = _sharedPrefObject.getBool("themeData") == null ||
          _sharedPrefObject.getBool("themeData") == true
      ? true
      : false;
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
    _sharedPrefObject.setBool("themeData", value);
  }

  void loadThemeFromSharedPref() async {
    await createSharedPrefObject();
    if (_sharedPrefObject.getBool("themeData") == null) {
      _sharedPrefObject.setBool("themeData", true);
      //_isLight = true;
    } else {
      _isLight = _sharedPrefObject.getBool("themeData")!;
    }
  }
}
