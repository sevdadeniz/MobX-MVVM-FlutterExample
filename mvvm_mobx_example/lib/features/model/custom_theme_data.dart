import 'package:flutter/material.dart';
import 'package:mvvm_mobx_example/core/theme/dark_theme/dark_theme.dart';

import '../../core/theme/light_theme/light_theme.dart';

class CustomThemeDataModal with ChangeNotifier {
  bool _isLight = true;

  bool get isLight => _isLight;

  ThemeData get themeColor {
    return _isLight ? myLightTheme : myDarkTheme;
  }

  void toggleTheme() {
    _isLight = !_isLight;
    notifyListeners();
  }
}
