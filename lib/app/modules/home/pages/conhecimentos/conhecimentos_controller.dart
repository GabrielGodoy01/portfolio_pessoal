import 'package:mobx/mobx.dart';

import 'infra/conhecimentos_enum.dart';

part 'conhecimentos_controller.g.dart';

// ignore: library_private_types_in_public_api
class ConhecimentosController = _ConhecimentosController
    with _$ConhecimentosController;

abstract class _ConhecimentosController with Store {
  @observable
  int indexToShow = 0;

  @observable
  List<ConhecimentosEnum> list = ConhecimentosEnum.values;

  @action
  void alterarIndex(int index) {
    indexToShow = index;
  }
}
