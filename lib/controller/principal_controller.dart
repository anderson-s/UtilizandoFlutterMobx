import "package:mobx/mobx.dart";
import "package:utilizando_mobx/controller/controller_item.dart";
part "principal_controller.g.dart";

class ControllerPrincipal = PrincipalController with _$ControllerPrincipal;

abstract class PrincipalController with Store {
  @observable
  String novoItem = "";

  @action
  void setNovoItem(String valor) => novoItem = valor;

  @observable
  ObservableList<ControllerItemMobx> listaItems = ObservableList<ControllerItemMobx>();

  @action
  void adicionarItem() {
    listaItems.add(ControllerItemMobx(novoItem));
    print(listaItems.length);
  }
}
