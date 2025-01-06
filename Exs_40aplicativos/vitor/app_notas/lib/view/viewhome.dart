import 'package:app_notas/design/thema.dart';

import 'package:flutter/material.dart';

import 'package:provider/provider.dart';


class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);
    final TextEditingController controller = TextEditingController();

    return Column(
      children: [
        Expanded(
          child: Container(
            margin: const EdgeInsets.all(20),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.circular(5),
            ),
            child: TextField(
              controller: controller,
              maxLines: null,
              decoration: const InputDecoration(
                border: InputBorder.none,
                hintText: "Digite sua nota aqui...",
              ),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {
            appState.salvarTexto(controller.text);
            controller.clear();
          },
          child: const Text("Salvar"),
        ),
      ],
    );
  }
}
