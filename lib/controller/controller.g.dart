// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$ControllerMobx on Controller, Store {
  Computed<String>? _$emailSenhaComputed;

  @override
  String get emailSenha =>
      (_$emailSenhaComputed ??= Computed<String>(() => super.emailSenha,
              name: 'Controller.emailSenha'))
          .value;
  Computed<bool>? _$formularioValidoComputed;

  @override
  bool get formularioValido => (_$formularioValidoComputed ??= Computed<bool>(
          () => super.formularioValido,
          name: 'Controller.formularioValido'))
      .value;

  late final _$emailAtom = Atom(name: 'Controller.email', context: context);

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  late final _$senhaAtom = Atom(name: 'Controller.senha', context: context);

  @override
  String get senha {
    _$senhaAtom.reportRead();
    return super.senha;
  }

  @override
  set senha(String value) {
    _$senhaAtom.reportWrite(value, super.senha, () {
      super.senha = value;
    });
  }

  late final _$ControllerActionController =
      ActionController(name: 'Controller', context: context);

  @override
  void setEmail(String emailF) {
    final _$actionInfo =
        _$ControllerActionController.startAction(name: 'Controller.setEmail');
    try {
      return super.setEmail(emailF);
    } finally {
      _$ControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setSenha(String senhaF) {
    final _$actionInfo =
        _$ControllerActionController.startAction(name: 'Controller.setSenha');
    try {
      return super.setSenha(senhaF);
    } finally {
      _$ControllerActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
senha: ${senha},
emailSenha: ${emailSenha},
formularioValido: ${formularioValido}
    ''';
  }
}
