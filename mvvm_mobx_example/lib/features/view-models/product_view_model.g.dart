// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'product_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ProductViewModel on _ProductViewModelBase, Store {
  late final _$isServiceRequestLoadingAtom = Atom(
      name: '_ProductViewModelBase.isServiceRequestLoading', context: context);

  @override
  bool get isServiceRequestLoading {
    _$isServiceRequestLoadingAtom.reportRead();
    return super.isServiceRequestLoading;
  }

  @override
  set isServiceRequestLoading(bool value) {
    _$isServiceRequestLoadingAtom
        .reportWrite(value, super.isServiceRequestLoading, () {
      super.isServiceRequestLoading = value;
    });
  }

  late final _$productsAtom =
      Atom(name: '_ProductViewModelBase.products', context: context);

  @override
  List<Product> get products {
    _$productsAtom.reportRead();
    return super.products;
  }

  @override
  set products(List<Product> value) {
    _$productsAtom.reportWrite(value, super.products, () {
      super.products = value;
    });
  }

  late final _$getAllProductAsyncAction =
      AsyncAction('_ProductViewModelBase.getAllProduct', context: context);

  @override
  Future<void> getAllProduct() {
    return _$getAllProductAsyncAction.run(() => super.getAllProduct());
  }

  @override
  String toString() {
    return '''
isServiceRequestLoading: ${isServiceRequestLoading},
products: ${products}
    ''';
  }
}
