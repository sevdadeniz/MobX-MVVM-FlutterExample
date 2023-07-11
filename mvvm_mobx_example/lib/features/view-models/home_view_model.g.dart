// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$HomeViewModel on _HomeViewModelBase, Store {
  late final _$num1Atom =
      Atom(name: '_HomeViewModelBase.num1', context: context);

  @override
  int get num1 {
    _$num1Atom.reportRead();
    return super.num1;
  }

  @override
  set num1(int value) {
    _$num1Atom.reportWrite(value, super.num1, () {
      super.num1 = value;
    });
  }

  late final _$num2Atom =
      Atom(name: '_HomeViewModelBase.num2', context: context);

  @override
  int get num2 {
    _$num2Atom.reportRead();
    return super.num2;
  }

  @override
  set num2(int value) {
    _$num2Atom.reportWrite(value, super.num2, () {
      super.num2 = value;
    });
  }

  late final _$sumAtom = Atom(name: '_HomeViewModelBase.sum', context: context);

  @override
  int get sum {
    _$sumAtom.reportRead();
    return super.sum;
  }

  @override
  set sum(int value) {
    _$sumAtom.reportWrite(value, super.sum, () {
      super.sum = value;
    });
  }

  late final _$rndAtom = Atom(name: '_HomeViewModelBase.rnd', context: context);

  @override
  Random get rnd {
    _$rndAtom.reportRead();
    return super.rnd;
  }

  @override
  set rnd(Random value) {
    _$rndAtom.reportWrite(value, super.rnd, () {
      super.rnd = value;
    });
  }

  late final _$_HomeViewModelBaseActionController =
      ActionController(name: '_HomeViewModelBase', context: context);

  @override
  void changeNum1() {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.changeNum1');
    try {
      return super.changeNum1();
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void changeNum2() {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.changeNum2');
    try {
      return super.changeNum2();
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void total() {
    final _$actionInfo = _$_HomeViewModelBaseActionController.startAction(
        name: '_HomeViewModelBase.total');
    try {
      return super.total();
    } finally {
      _$_HomeViewModelBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
num1: ${num1},
num2: ${num2},
sum: ${sum},
rnd: ${rnd}
    ''';
  }
}
