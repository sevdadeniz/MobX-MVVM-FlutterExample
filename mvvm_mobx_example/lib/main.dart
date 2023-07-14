import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_mobx_example/core/theme/light_theme/light_theme.dart';
import 'package:mvvm_mobx_example/features/model/custom_theme_data.dart';
import 'package:provider/provider.dart';

import 'features/view-models/product_view_model.dart';
import 'features/views/home_view.dart';
import 'features/views/login_view.dart';

void main() {
  runApp(ChangeNotifierProvider<CustomThemeDataModal>(
      create: (BuildContext context) => CustomThemeDataModal(),
      child: MyApp()));
}

final _viewProductModel = ProductViewModel();

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return MaterialApp(
          debugShowCheckedModeBanner: false,
          title: 'My App',
          // You can use the library anywhere in the app even in theme
          theme: Provider.of<CustomThemeDataModal>(context).themeColor,

          home: HomeView(),
        );
      },
    );
  }
}
