import 'package:flutter/material.dart';

import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/utils/themes.dart';

class DetailsPage extends StatelessWidget {
  final Item item;
  const DetailsPage({
    Key? key,
    required this.item,
  })  : assert(item != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: Container(
        child: Container(
          color: MyTheme.rosePink,
          child: Padding(
            padding: const EdgeInsets.all(40.0),
            child: ButtonBar(
              alignment: MainAxisAlignment.spaceBetween,
              buttonPadding: EdgeInsets.zero,
              children: [
                Text(
                  "\$${item.price}",
                  style: TextStyle(
                      color: Colors.brown,
                      fontWeight: FontWeight.bold,
                      fontSize: 26),
                ),
                ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: MyTheme.pastelGreen,
                  ),
                  child: Text(
                    "Buy Now",
                    style: TextStyle(color: Colors.black, fontSize: 26),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: Hero(
                  tag: Key(item.id.toString()),
                  child: Center(
                    child: ClipOval(
                      child: Image.network(
                        item.imageUrl,
                        height: 350,
                      ),
                    ),
                  )),
            ),
            Text(
              item.name,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 32,
              ),
            ),
            Text(
              item.desc,
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 20),
            )
          ],
        ),
      ),
    );
  }
}
