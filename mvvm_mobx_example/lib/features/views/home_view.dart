import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mvvm_mobx_example/features/view-models/home_view_model.dart';

class HomeView extends StatelessWidget {
  HomeView({super.key});

  final _viewModel = HomeViewModel();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("images/black.jpeg"),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Observer(builder: (_) {
                    return Text(_viewModel.num1.toString(),
                        style: const TextStyle(fontSize: 40, color: Colors.white));
                  }),
                  InkWell(
                    child: const SizedBox(
                      height: 20,
                      width: 30,
                      child: Icon(Icons.cached, size: 30, color: Colors.white),
                    ),
                    onTap: () {
                      _viewModel.changeNum1();
                    },
                  ),
                ],
              ),
              const Icon(
                Icons.add,
                size: 40,
                color: Colors.white,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Observer(builder: (_) {
                    return Text(_viewModel.num2.toString(),
                        style: const TextStyle(fontSize: 40, color: Colors.white));
                  }),
                  InkWell(
                    child: const SizedBox(
                      height: 20,
                      width: 30,
                      child: Icon(Icons.cached, size: 30, color: Colors.white),
                    ),
                    onTap: () {
                      _viewModel.changeNum2();
                    },
                  ),
                ],
              ),
              const Icon(Icons.density_large, color: Colors.white),
              Observer(builder: (_) {
                return Text(_viewModel.sum.toString(),
                    style: const TextStyle(fontSize: 50, color: Colors.white));
              }),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40.0),
            child: SizedBox(
              width: 200.0,
              child: ElevatedButton(
                  onPressed: () {
                    _viewModel.total();
                  },
                  child: const Text(
                    "Sonucu Gör",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: SizedBox(
              width: 200.0,
              child: ElevatedButton(
                  onPressed: () {
                    _viewModel.nextPage(context);
                  },
                  child: const Text(
                    "Sonraki Sayfa",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        fontWeight: FontWeight.bold),
                  )),
            ),
          )
        ],
      ),
    );
  }
}
