import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mvvm_mobx_example/features/view-models/calc_view_model.dart';

class CalcView extends StatelessWidget {
  CalcView({super.key});

  final _viewModel = CalcViewModel();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My App"),
        titleTextStyle: AppBarTheme.of(context).titleTextStyle,
      ),
      body: Container(
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
                          style: const TextStyle(
                              fontSize: 40, color: Colors.white));
                    }),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.cached),
                      label: const Text(""),
                      onPressed: () {
                        _viewModel.changeNum1();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                    ),
                  ],
                ),
                const Icon(
                  Icons.add,
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Observer(builder: (_) {
                      return Text(_viewModel.num2.toString(),
                          style: const TextStyle(
                              fontSize: 40, color: Colors.white));
                    }),
                    ElevatedButton.icon(
                      icon: const Icon(Icons.cached),
                      label: const Text(""),
                      onPressed: () {
                        _viewModel.changeNum2();
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.black,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(32.0),
                        ),
                      ),
                    ),
                  ],
                ),
                const Icon(Icons.density_large, color: Colors.white),
                Observer(builder: (_) {
                  return Text(_viewModel.sum.toString(),
                      style:
                          const TextStyle(fontSize: 50, color: Colors.white));
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
                    child: Text("Sonucu Gör",
                        style: Theme.of(context).textTheme.titleMedium)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
