
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
          border: InputBorder.none,
          hintText: "coloque o titulo e Digite Sua Nota Aqui: ",
          contentPadding: EdgeInsets.all(10)),
    );
  }
}

class AppState with ChangeNotifier {
  Pages switchpages = Pages.pageHome;

  List<String> dados = [];


  void updatePage(Pages page) {
    switchpages = page;
    notifyListeners();
  }

  void salvarTexto(String texto) {
    if (texto.isNotEmpty) {
      dados.add(texto);
      notifyListeners();
    }
  }
}

enum Pages { pageHome, pageFavorita }