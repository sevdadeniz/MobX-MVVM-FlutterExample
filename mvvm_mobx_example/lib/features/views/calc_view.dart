import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:mvvm_mobx_example/features/view-models/calc_view_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class CalcView extends StatefulWidget {
  CalcView({super.key});

  @override
  State<CalcView> createState() => _CalcViewState();
}

class _CalcViewState extends State<CalcView> {
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
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text("Merhaba " + emailData),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Observer(builder: (_) {
                    return Text(_viewModel.num1.toString(),
                        style:
                            const TextStyle(fontSize: 40, color: Colors.white));
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
                        style:
                            const TextStyle(fontSize: 40, color: Colors.white));
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
                  child: Text("Sonucu Gör",
                      style: Theme.of(context).textTheme.titleMedium)),
            ),
          ),
        ],
      ),
    );
  }
}
