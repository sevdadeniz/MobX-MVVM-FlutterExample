import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_mobx_example/features/model/custom_theme_data.dart';
import 'package:mvvm_mobx_example/features/views/home_view.dart';
import 'package:mvvm_mobx_example/features/views/login_view.dart';
import 'package:provider/provider.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await CustomThemeDataModal().createSharedPrefObject();
  runApp(ChangeNotifierProvider<CustomThemeDataModal>(
      create: (BuildContext context) => CustomThemeDataModal(),
      child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    Provider.of<CustomThemeDataModal>(context, listen: false)
        .loadThemeFromSharedPref();
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

          home: LoginView(),
        );
      },
    );
  }
}
