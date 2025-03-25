import 'package:flutter/material.dart';
import 'package:qrcode/widget.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldPadrao(
      body: Center(
        child: Column(
          children: [Icon(Icons.location_on, size: 100), Image.asset("img/qrimg.png"),],
        ),
      ),
    );
  }
}
