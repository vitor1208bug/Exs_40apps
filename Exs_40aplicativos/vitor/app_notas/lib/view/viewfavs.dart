
import 'package:app_notas/design/thema.dart';
import 'package:flutter/material.dart';


import 'package:provider/provider.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    return ListView(
      children: [
        const ListTile(
          title: Text("Textos Salvos:"),
        ),
        ...appState.dados.map((texto) => ListTile(
              title: Text(texto),
            )),
      ],
    );
  }
}

