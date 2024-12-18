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
            margin: const EdgeInsets.all(20),
            height:200,
            decoration: BoxDecoration(
              color: Colors.blueGrey[50],
              borderRadius: BorderRadius.circular(5),
              image: DecorationImage(image: AssetImage("img/linhas.avif"))
            ),
            child: Image.asset("img/linhas.avif"),
          ),
        )
      ],
    );
  }
}
