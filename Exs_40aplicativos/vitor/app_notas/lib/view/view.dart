import 'package:app_notas/design/thema.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Expanded(
          child: Container(
            margin:
                const EdgeInsets.only(right: 20, left: 20, top: 20, bottom: 0),
            height: 150,
            decoration: BoxDecoration(
              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.circular(5),
            ),
            child: const Column(children: [LinhasDeTexto()]),
          ),
        ),
        const SizedBox(height: 5),
        Row(
          children: [
            Expanded(
                child: Container(
              margin: const EdgeInsets.all(20),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(5)))),
                child: const Text("salvar"),
              ),
            )),
          ],
        ),
        const SizedBox(height: 20)
      ],
    );
  }
}
