import "package:mobx/mobx.dart";
part "controller.g.dart";
class ControllerMobx = Controller with _$ControllerMobx;

abstract class Controller with Store {
  @observable
  int contador = 0;

  @action
  incrementar(){
    contador++;
  }
}
