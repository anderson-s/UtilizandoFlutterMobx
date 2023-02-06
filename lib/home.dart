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
  int contador = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
                padding: const EdgeInsets.all(
                  16,
                ),
                child: Observer(
                  builder: (_) {
                    return Text(
                      controller.contador.toString(),
                      style: const TextStyle(
                        color: Colors.black,
                        fontSize: 20,
                      ),
                    );
                  },
                )),
            Padding(
              padding: const EdgeInsets.all(
                16,
              ),
              child: ElevatedButton(
                child: const Icon(Icons.add),
                onPressed: () {
                  controller.incrementar();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
