import 'package:flutter/material.dart';

Color themaPrimaryScaffolf = Colors.black;

ThemeData themaPrimary = ThemeData(primaryColor: Colors.amber[200]);

AppBar themeAppBar = AppBar(
  title: const Text(
    "BEM VINDO",
    style: TextStyle(fontSize: 30),
  ),
  backgroundColor: Colors.indigo[400],
  titleTextStyle: const TextStyle(color: Colors.black),
  leading: IconButton(onPressed: () {}, icon: const Icon(Icons.menu)),
  centerTitle: true,
);


class LinhasDeTexto extends StatelessWidget {
  const LinhasDeTexto({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const TextField(
      autocorrect: true,
      maxLines: null,
      decoration: InputDecoration(
          border: InputBorder.none, hintText: "Digite Sua Nota Aqui: ",
          contentPadding: EdgeInsets.all(10)
        ),
    );
  }
}
