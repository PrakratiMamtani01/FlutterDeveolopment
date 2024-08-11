import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/store.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:flutter_application_1/models/catalog.dart';
import 'package:flutter_application_1/widgets/cartPage_widgets/total_bar.dart';
import 'package:velocity_x/velocity_x.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    VxState.watch(context, on: [RemoveMutation]);
    final CartModel _cart = (VxState.store as MyStore).cart;
    return Scaffold(
      appBar: AppBar(
        title: Text("Cart"),
      ),
      body: Column(
        children: [
          Expanded(
              child: ListView.builder(
                  itemCount: _cart.items.length,
                  itemBuilder: (context, index) {
                    Item item = _cart.items[index];
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                          leading: Image.network(item.imageUrl),
                          title: Text(
                            item.name,
                            style: TextStyle(color: Colors.black, fontSize: 22),
                          ),
                          subtitle: Text(
                            "\$${item.price}",
                          ),
                          trailing: IconButton(
                              onPressed: () => RemoveMutation(item),
                              icon: Icon(Icons.remove_outlined))),
                    );
                  })),
          TotalBar()
        ],
      ),
    );
  }
}
