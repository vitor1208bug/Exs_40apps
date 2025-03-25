import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:qrcode/homepage.dart';
import 'package:qrcode/qrocodeprovider.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider( create: (context) => Qrocodeprovider(),
      child: MaterialApp(
        theme: ThemeData(scaffoldBackgroundColor: const Color.fromARGB(255, 98, 184, 255)),
        initialRoute: "/",
        routes: {"/" : (context) => Homepage()} 
      ),
    );
  }
}
