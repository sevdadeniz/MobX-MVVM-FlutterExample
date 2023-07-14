import 'package:flutter/material.dart';
import 'package:mvvm_mobx_example/features/views/calc_view.dart';
import 'package:mvvm_mobx_example/features/views/product_list_view.dart';
import '../view-models/home_view_model.dart';
import 'login_view.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});
  final _viewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("images/black.jpeg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              HomeButton(context, "Hesap Makinesi", CalcView()),
              HomeButton(context, "Ürün Listesi", ProductListView()),
              HomeButton(context, "Çıkış Yap", const LoginView()),
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
      padding: const EdgeInsets.only(top: 20.0),
      child: SizedBox(
        width: 300.0,
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
