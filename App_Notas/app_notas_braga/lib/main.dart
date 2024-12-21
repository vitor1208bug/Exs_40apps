import 'package:app_notas_braga/ViewModel.dart';
import 'package:app_notas_braga/ui/theme.dart';
import 'package:app_notas_braga/ui/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => HomePageState(),
      child: MaterialApp(
        theme: theme,
        home: const HomePage()
      ),
    );
  }
}
