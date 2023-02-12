// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'principal_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ControllerPrincipal on PrincipalController, Store {
  late final _$novoItemAtom =
      Atom(name: 'PrincipalController.novoItem', context: context);

  @override
  String get novoItem {
    _$novoItemAtom.reportRead();
    return super.novoItem;
  }

  @override
  set novoItem(String value) {
    _$novoItemAtom.reportWrite(value, super.novoItem, () {
      super.novoItem = value;
    });
  }

  late final _$listaItemsAtom =
      Atom(name: 'PrincipalController.listaItems', context: context);

  @override
  ObservableList<ControllerItemMobx> get listaItems {
    _$listaItemsAtom.reportRead();
    return super.listaItems;
  }

  @override
  set listaItems(ObservableList<ControllerItemMobx> value) {
    _$listaItemsAtom.reportWrite(value, super.listaItems, () {
      super.listaItems = value;
    });
  }

  late final _$PrincipalControllerActionController =
      ActionController(name: 'PrincipalController', context: context);

  @override
  void setNovoItem(String valor) {
    final _$actionInfo = _$PrincipalControllerActionController.startAction(
        name: 'PrincipalController.setNovoItem');
    try {
      return super.setNovoItem(valor);
    } finally {
      _$PrincipalControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void adicionarItem() {
    final _$actionInfo = _$PrincipalControllerActionController.startAction(
        name: 'PrincipalController.adicionarItem');
    try {
      return super.adicionarItem();
    } finally {
      _$PrincipalControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
novoItem: ${novoItem},
listaItems: ${listaItems}
    ''';
  }
}
