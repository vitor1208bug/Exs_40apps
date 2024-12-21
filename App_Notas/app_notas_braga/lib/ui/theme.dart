import 'package:flutter/material.dart';

final theme = ThemeData(
  useMaterial3: true,
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.amber,
  ),
  appBarTheme: const AppBarTheme(
    centerTitle: true,
  ),
  cardColor: Colors.amber[300],
  scaffoldBackgroundColor: const Color.fromARGB(255, 218, 203, 155)
);
