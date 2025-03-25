
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ScaffoldPadrao extends StatelessWidget {
  Widget body;
  ScaffoldPadrao({super.key, required this.body });


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:const Color.fromARGB(255, 103, 187, 255),
      body: body,
    );
  }
  
  
}