import 'dart:math';

import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';

import '../views/product_list_view.dart';
part 'home_view_model.g.dart';

// ignore: library_private_types_in_public_api
class HomeViewModel = _HomeViewModelBase with _$HomeViewModel;

abstract class _HomeViewModelBase with Store {
  @observable
  int num1 = 0, num2 = 0, sum = 0;

  @observable
  var rnd = Random();

  @action
  void changeNum1() {
    num1 = rnd.nextInt(100);
  }

  @action
  void changeNum2() {
    num2 = rnd.nextInt(100);
  }

  @action
  void total() {
    sum = num1 + num2;
  }

  void nextPage(context) {
    Navigator.of(context)
        .push(MaterialPageRoute(builder: (context) => ProductListView()));
  }
}
