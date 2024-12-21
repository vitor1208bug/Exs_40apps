import 'package:app_notas/design/thema.dart';
import 'package:app_notas/view/view.dart';
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
      home: const HomePage() ,
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
      body: const FirstPage(),
    );
  }
}
