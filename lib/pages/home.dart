import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int days = 15;
  final String name = "Prachi";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My First App"),
      ),
      body: Center(
          child: Container(
        child: Text("Beginning with $days days of flutter by $name"),
      )),
      drawer: Drawer(),
    );
  }
}
