import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: themaPrimary,
      home: const MainScaffold(),
    );
  }
}

class MainScaffold extends StatefulWidget {
  const MainScaffold({super.key});

  @override
  State<MainScaffold> createState() => _MainScaffoldState();
}

class _MainScaffoldState extends State<MainScaffold> {
  Pages _currentPage = Pages.pageHome;

  void _navigateToPage(Pages page) {
    setState(() {
      _currentPage = page;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themaPrimaryScaffolf,
      appBar: themeAppBar,
      drawer: Drawer(
        shape: Border.all(style: BorderStyle.none),
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            const DrawerHeader(
              decoration: BoxDecoration(color: Colors.purple),
              child: Center(
                child: Text("MENU"),
              ),
            ),
            ListTile(
              title: const Text("Home"),
              onTap: () {
                _navigateToPage(Pages.pageHome);
                Navigator.pop(context); // Fecha o drawer
              },
            ),
            ListTile(
              title: const Text("Favoritos"),
              onTap: () {
                _navigateToPage(Pages.pageFavorita);
                Navigator.pop(context); // Fecha o drawer
              },
            ),
          ],
        ),
      ),
      body: _currentPage == Pages.pageHome
          ? const FirstPage()
          : const SecondPage(),
    );
  }
}

enum Pages { pageHome, pageFavorita }

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
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                    ),
                  ),
                  child: const Text("salvar"),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
      ],
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const [
        ListTile(
          title: Text("Item Favorito"),
        ),
      ],
    );
  }
}

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
  const LinhasDeTexto({super.key});

  @override
  Widget build(BuildContext context) {
    return const TextField(
      autocorrect: true,
      maxLines: null,
      decoration: InputDecoration(
        border: InputBorder.none,
        hintText: "Digite Sua Nota Aqui: ",
        contentPadding: EdgeInsets.all(10),
      ),
    );
  }
}
