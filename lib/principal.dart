import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:utilizando_mobx/controller/principal_controller.dart';

class Principal extends StatefulWidget {
  const Principal({super.key});

  @override
  _PrincipalState createState() => _PrincipalState();
}

class _PrincipalState extends State<Principal> {
  final _principalController = ControllerPrincipal();
  _dialog() {
    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          title: const Text("Adicionar item"),
          content: TextField(
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: "Digite uma descrição...",
            ),
            onChanged: _principalController.setNovoItem,
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                "Cancelar",
                style: TextStyle(color: Colors.red),
              ),
            ),
            Observer(
              builder: (context) {
                return TextButton(
                  onPressed: () {
                    _principalController.adicionarItem();
                    Navigator.pop(context);
                  },
                  child: const Text("Salvar"),
                );
              },
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Tarefas",
          style: TextStyle(
            fontSize: 25,
            color: Colors.white,
          ),
        ),
      ),
      body: Observer(
        builder: (_) {
          return ListView.builder(
            itemCount: _principalController.listaItems.length,
            itemBuilder: (_, indice) {
              var item = _principalController.listaItems[indice];
              return Observer(
                builder: (_) {
                  return ListTile(
                    title: Text(
                      item.titulo,
                      style: TextStyle(
                        decoration:
                            item.marcado ? TextDecoration.lineThrough : null,
                      ),
                    ),
                    // onTap: () {
                    //   item.marcado = !item.marcado;
                    // },
                    leading: Checkbox(
                      value: item.marcado,
                      onChanged: (value) {
                        item.marcado = value!;
                      },
                    ),
                  );
                },
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.add),
        onPressed: () {
          _dialog();
        },
      ),
    );
  }
}
