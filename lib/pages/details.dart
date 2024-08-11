import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/store.dart';
import 'package:flutter_application_1/models/cart.dart';

import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/utils/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class DetailsPage extends StatelessWidget {
  final Item item;
  const DetailsPage({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: Container(
        color: MyTheme.rosePink,
        child: Padding(
          padding: const EdgeInsets.all(40.0),
          child: AddToCart(item: item),
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

class AddToCart extends StatelessWidget {
  const AddToCart({
    super.key,
    required this.item,
  });

  final Item item;

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [AddMutation, RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    bool itemAdded = (_cart.items.contains(item)) ? true : false;
    return ButtonBar(
      alignment: MainAxisAlignment.spaceBetween,
      buttonPadding: EdgeInsets.zero,
      children: [
        Text(
          "\$${item.price}",
          style: TextStyle(
              color: Colors.brown, fontWeight: FontWeight.bold, fontSize: 26),
        ),
        ElevatedButton(
          onPressed: () {
            if (!itemAdded) {
              AddMutation(item);
            }
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: MyTheme.pastelGreen,
          ),
          child: itemAdded
              ? Icon(Icons.done)
              : Text("Buy Now",
                  style: TextStyle(color: Colors.black, fontSize: 26)),
        )
      ],
    );
  }
}
