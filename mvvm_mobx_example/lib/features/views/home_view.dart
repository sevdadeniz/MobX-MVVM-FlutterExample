import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_mobx_example/features/view-models/calc_view_model.dart';
import 'package:mvvm_mobx_example/features/views/calc_view.dart';
import 'package:mvvm_mobx_example/features/views/product_list_view.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/custom_theme_data.dart';

class HomeView extends StatefulWidget {
  HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  final _viewModel = CalcViewModel();

  String emailData = "";

  getMailData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    emailData = sp.getString("email")!;
  }

  deleteMailData() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.remove("email");
  }

  @override
  void initState() {
    getMailData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Row(
            children: [
              Text(Provider.of<CustomThemeDataModal>(context).isLight
                  ? "Light Tema"
                  : "Dark Tema"),
              Switch(
                  value: Provider.of<CustomThemeDataModal>(context).isLight,
                  onChanged: (_) {
                    Provider.of<CustomThemeDataModal>(context, listen: false)
                        .toggleTheme();
                  }),
            ],
          )
        ],
      ),
      body: Container(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Merhaba " + emailData),

              HomeButton(context, "Hesap Makinesi", CalcView()),
              HomeButton(context, "Ürün Listesi", ProductListView()),
              // HomeButton(context, "Hesabım",  LoginView()),
            ],
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  Padding HomeButton(BuildContext context, btnTxt, page) {
    // buton üzerindeki yazı ve yönlendirme yapılacak widget name parametre olarak alındı
    return Padding(
      padding: EdgeInsets.only(top: 20.0.h),
      child: SizedBox(
        width: 300.0.w,
        child: ElevatedButton(
            onPressed: () {
              _viewModel.nextPage(context, page);
            },
            child: Text(
              btnTxt,
              style: Theme.of(context).textTheme.titleMedium,
            )),
      ),
    );
  }
}
