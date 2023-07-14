import 'package:flutter/material.dart';
import 'package:mvvm_mobx_example/core/theme/light_theme/light_theme.dart';

import 'features/views/home_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      color: Colors.white,
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: myLightTheme,
      home: Scaffold(body: HomeView()),
    );
  }
}
