import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import "package:mobx/mobx.dart";
import 'package:utilizando_mobx/controller/controller.dart';
import 'package:utilizando_mobx/principal.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ControllerMobx controller = ControllerMobx();
  late ReactionDisposer _disposer;
  bool mostrar = true;
  int contador = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    _disposer = reaction(
      (_) => controller.usuarioLogado,
      (valor) {
        if (valor) {
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(
              builder: (context) {
                return const Principal();
              },
            ),
          );
        }
      },
    );
  }

  @override
  void dispose() {
    _disposer.reaction.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                onChanged: controller.setEmail,
                decoration: const InputDecoration(
                  labelText: "Email",
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16),
              child: TextField(
                obscureText: mostrar,
                onChanged: controller.setSenha,
                decoration: InputDecoration(
                  labelText: "Senha",
                  suffixIcon: IconButton(
                    onPressed: () {
                      setState(() {
                        mostrar = !mostrar;
                      });
                    },
                    icon: Icon(
                      mostrar
                          ? Icons.visibility_off
                          : Icons.remove_red_eye_rounded,
                    ),
                  ),
                ),
              ),
            ),
            Observer(
              builder: (context) {
                return Padding(
                  padding: const EdgeInsets.all(16),
                  child: Text(
                    controller.formularioValido
                        ? "Campos validados"
                        : "*Campos não validados",
                  ),
                );
              },
            ),
            Padding(
              padding: const EdgeInsets.all(
                16,
              ),
              child: Observer(
                builder: (context) {
                  return ElevatedButton(
                    onPressed: controller.formularioValido
                        ? () {
                            controller.logar();
                          }
                        : null,
                    child: controller.carregando
                        ? const CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation(Colors.white),
                          )
                        : const Text(
                            "Logar",
                          ),
                  );
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
