import "package:mobx/mobx.dart";
part "controller.g.dart";

class ControllerMobx = Controller with _$ControllerMobx;

abstract class Controller with Store {
  @observable
  String email = "";

  @observable
  String senha = "";

  @observable
  bool carregando = false;

  @observable
  bool usuarioLogado = false;

  @action
  void setEmail(String emailF) => email = emailF;

  @action
  void setSenha(String senhaF) => senha = senhaF;

  @computed
  String get emailSenha => "\nEmail: $email\nSenha: $senha";

  @computed
  bool get formularioValido =>
      (email.contains("@") && email.length > 5) && (senha.length >= 6);

  @action
  Future<void> logar() async {
    carregando = true;

    await Future.delayed(
      const Duration(
        seconds: 3,
      ),
    );
    carregando = false;
    usuarioLogado = true;
  }
}
