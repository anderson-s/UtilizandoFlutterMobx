import "package:mobx/mobx.dart";
part "controller.g.dart";

class ControllerMobx = Controller with _$ControllerMobx;

abstract class Controller with Store {
  // Controller() {
  //   autorun((_) {
  //     emailSenha;
  //   });
  // }

  @observable
  String email = "";

  @observable
  String senha = "";

  @action
  void setEmail(String emailF) => email = emailF;

  @action
  void setSenha(String senhaF) => senha = senhaF;

  @computed
  String get emailSenha => "\nEmail: $email\nSenha: $senha";

  @computed
  bool get formularioValido => (email.contains("@") && email.length > 5) && (senha.length >= 6);
}
