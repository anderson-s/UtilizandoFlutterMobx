import "package:mobx/mobx.dart";
part "principal_controller.g.dart";

class ControllerPrincipal = PrincipalController with _$ControllerPrincipal;

abstract class PrincipalController with Store {
  @observable
  String novoItem = "";

  @action
  void setNovoItem(String valor) => novoItem = valor;

  @observable
  ObservableList<String> listaItems = ObservableList();

  @action
  void adicionarItem() {
    listaItems.add(novoItem);
    print(listaItems.length);
  }
}
