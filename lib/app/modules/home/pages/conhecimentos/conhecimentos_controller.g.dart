// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'conhecimentos_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ConhecimentosController on _ConhecimentosController, Store {
  late final _$indexToShowAtom =
      Atom(name: '_ConhecimentosController.indexToShow', context: context);

  @override
  int get indexToShow {
    _$indexToShowAtom.reportRead();
    return super.indexToShow;
  }

  @override
  set indexToShow(int value) {
    _$indexToShowAtom.reportWrite(value, super.indexToShow, () {
      super.indexToShow = value;
    });
  }

  late final _$listAtom =
      Atom(name: '_ConhecimentosController.list', context: context);

  @override
  List<ConhecimentosEnum> get list {
    _$listAtom.reportRead();
    return super.list;
  }

  @override
  set list(List<ConhecimentosEnum> value) {
    _$listAtom.reportWrite(value, super.list, () {
      super.list = value;
    });
  }

  late final _$_ConhecimentosControllerActionController =
      ActionController(name: '_ConhecimentosController', context: context);

  @override
  void alterarIndex(int index) {
    final _$actionInfo = _$_ConhecimentosControllerActionController.startAction(
        name: '_ConhecimentosController.alterarIndex');
    try {
      return super.alterarIndex(index);
    } finally {
      _$_ConhecimentosControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
indexToShow: ${indexToShow},
list: ${list}
    ''';
  }
}
