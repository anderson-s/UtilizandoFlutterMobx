import "package:mobx/mobx.dart";
part "controller_item.g.dart";

class ControllerItemMobx = ItemControllerBase with _$ControllerItemMobx;

abstract class ItemControllerBase with Store {
  ItemControllerBase(this.titulo);
  final String titulo;

  @observable
  bool marcado = false;

  void alterarMarcado(bool valor) => marcado = valor;

}