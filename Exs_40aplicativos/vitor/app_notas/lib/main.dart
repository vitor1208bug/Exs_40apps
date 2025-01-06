import 'package:app_notas/design/thema.dart';
import 'package:app_notas/view/viewfavs.dart';
import 'package:app_notas/view/viewhome.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


void main(List<String> args) {
  runApp(
    ChangeNotifierProvider(
      create: (_) => AppState(),
      child: const MainApp(),
    ),
  );
}
 

class MainApp extends StatelessWidget {
  const MainApp({super.key});
  @override
  Widget build(BuildContext context) {
  
    return MaterialApp(
      
      theme: themaPrimary,
      initialRoute: "/",
      routes: {"/":(context)=> const HomePage(),
              "/telafavs": (context)=> const SecondPage()
      },
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomeState();
}


class _HomeState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: themaPrimaryScaffolf ,
      appBar: themeAppBar,
      drawer: const AppDrawer(),
      body: const FirstPage(),
    );
  }
}

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  
  Widget build(BuildContext context) {
    final appState = Provider.of<AppState>(context);

    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          const DrawerHeader(
            decoration: BoxDecoration(color: Colors.purple),
            child: Center(child: Text("MENU")),
          ),
          ListTile(
            title: const Text("Home"),
            onTap: () => appState.updatePage(Pages.pageHome),
          ),
          ListTile(
            title: const Text("Favoritos"),
            onTap: () => appState.updatePage(Pages.pageFavorita),
          ),
        ],
      ),
    );
  }
}
// no body coloque uma função ou classe que mude de acordo com oque você colocar como 1 ou 2 ou home ou favs
// pra não ficar repetindo varias vezes o drawer 
