import 'dart:io';

import 'package:dio/dio.dart';
import 'package:mobx/mobx.dart';
import '../model/product_model.dart';
part 'product_view_model.g.dart';

// ignore: library_private_types_in_public_api
class ProductViewModel = _ProductViewModelBase with _$ProductViewModel;

abstract class _ProductViewModelBase with Store {
  @observable
  bool isServiceRequestLoading = false;

  @observable
  List<Product> products = [];

  final url = "https://dummyjson.com/products";

  @action
  Future<void> getAllProduct() async {
    changeRequest();
    final response = await Dio().get(url);

    if (response.statusCode == HttpStatus.ok) {
      //print(response.data);

      final responseData = response.data["products"] as List<dynamic>;
      products = responseData.map((e) => Product.fromMap(e)).toList();
    }
    changeRequest();
  }

  void changeRequest() {
    isServiceRequestLoading = !isServiceRequestLoading;
  }
}
