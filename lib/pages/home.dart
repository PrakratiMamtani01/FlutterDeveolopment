import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/utils/themes.dart';
import 'package:flutter_application_1/widgets/drawer.dart';
import 'package:flutter_application_1/widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final int days = 15;

  final String name = "Prachi";

  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() async {
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    final productsData = decodedData["products"];
    CatalogModel.items = List.from(productsData)
        .map<Item>((item) => Item.fromMap(item))
        .toList();

    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "EDEN",
          style: TextStyle(
              color: Colors.brown,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.italic),
        ),
      ),
      body: GridView.builder(
          gridDelegate:
              SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
          itemCount: CatalogModel.items.length,
          itemBuilder: (context, index) {
            return (CatalogModel.items != null && CatalogModel.items.isNotEmpty)
                ? ItemWidget(item: CatalogModel.items[index])
                : Center(
                    child: CircularProgressIndicator(),
                  );
          }),
      drawer: MyDrawer(),
    );
  }
}
