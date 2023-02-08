import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:utilizando_mobx/controller/controller.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  ControllerMobx controller = ControllerMobx();
  bool mostrar = true;
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Padding(
            //   padding: const EdgeInsets.all(
            //     16,
            //   ),
            //   child: Observer(
            //     builder: (_) {
            //       return Text(
            //         controller.contador.toString(),
            //         style: const TextStyle(
            //           color: Colors.black,
            //           fontSize: 20,
            //         ),
            //       );
            //     },
            //   ),
            // ),
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
                    onPressed: controller.formularioValido ? () {} : null,
                    child: const Text("Logar"),
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
