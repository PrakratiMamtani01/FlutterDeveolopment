import 'package:flutter/material.dart';
import 'package:flutter_application_1/core/store.dart';
import 'package:flutter_application_1/models/cart.dart';
import 'package:flutter_application_1/utils/themes.dart';
import 'package:velocity_x/velocity_x.dart';

class TotalBar extends StatelessWidget {
  const TotalBar({super.key});
  

  @override
  Widget build(BuildContext context) {
    final CartModel _cart = (VxState.store as MyStore).cart;
    return SizedBox(
      height: 125,
      child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
        Text(
          "\$${_cart.totalPrice}",
          style: TextStyle(
              fontSize: 32, fontWeight: FontWeight.bold, color: Colors.brown),
        ),
        ElevatedButton(
          style: ButtonStyle(
              minimumSize: WidgetStateProperty.all(Size(100, 50)),
              backgroundColor: WidgetStateProperty.all(MyTheme.pastelGreen)),
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("Buying not supported yet"),
              ),
            );
          },
          child: Text(
            "Buy",
            style: TextStyle(
                color: Colors.white, fontWeight: FontWeight.bold, fontSize: 24),
          ),
        ),
      ]),
    );
  }
}
