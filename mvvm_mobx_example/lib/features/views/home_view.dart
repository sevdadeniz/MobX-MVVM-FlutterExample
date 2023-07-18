import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mvvm_mobx_example/features/view-models/calc_view_model.dart';
import 'package:mvvm_mobx_example/features/views/calc_view.dart';
import 'package:mvvm_mobx_example/features/views/product_list_view.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../model/custom_theme_data.dart';
import '../view-models/product_view_model.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final _viewModel = CalcViewModel();
  final _viewProductModel = ProductViewModel();

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          bottom: const TabBar(tabs: [
            Tab(text: "Toplama İşlemi", icon: Icon(Icons.home)),
            Tab(text: "Ürün Listele", icon: Icon(Icons.star)),
          ]),
          leading: Observer(builder: (_) {
            return Visibility(
              visible: _viewProductModel.isServiceRequestLoading,
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              ),
            );
          }),
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
        body: TabBarView(children: [CalcView(), ProductListView()]),
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

//  body: Container(
//         child: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text("Merhaba " + emailData),

//               HomeButton(context, "Hesap Makinesi", CalcView()),
//               HomeButton(context, "Ürün Listesi", ProductListView()),
//               // HomeButton(context, "Hesabım",  LoginView()),
//             ],
//           ),
//         ),
//       ),
