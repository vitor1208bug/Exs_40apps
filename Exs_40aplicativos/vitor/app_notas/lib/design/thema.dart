import 'package:flutter/material.dart';

Color themaPrimaryScaffolf = Colors.black;

ThemeData themaPrimary = ThemeData(primaryColor: Colors.amber[200]);

AppBar themeAppBar = AppBar(  
        title: const Text("BEM VINDO",style: TextStyle(fontSize: 30),),
        backgroundColor: Colors.indigo[400],
        titleTextStyle: const TextStyle(color: Colors.black),
        leading: IconButton(onPressed: (){}, icon: const Icon(Icons.menu)),
        centerTitle: true,
      );

