import 'package:app_notas_braga/ViewModel.dart';
import 'package:app_notas_braga/ui/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class RemoveOverlay extends StatefulWidget {
  Widget note;
  RemoveOverlay({super.key, required this.note});

  @override
  State<StatefulWidget> createState() => _RemoveOverlay();
}

class _RemoveOverlay extends State<RemoveOverlay> {
  @override
  Widget build(BuildContext context) {
    var appState = context.watch<HomePageState>();
    return AlertDialog(
      title: Text('Remove'),
      content: Text('Deseja realmente remover?'),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Cancelar'),
        ),
        ElevatedButton(
          onPressed: () {
            appState.removeItem(note: widget.note);
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomePage(),
              ),
            );
          },
          child: Text('Apagar'),
        ),
      ],
    );
  }
}
