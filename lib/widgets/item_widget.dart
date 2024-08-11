import 'package:flutter/material.dart';
import 'package:flutter_application_1/pages/details.dart';
import 'package:flutter_application_1/utils/themes.dart';
import '../models/catalog.dart';

class ItemWidget extends StatelessWidget {
  final Item item;

  const ItemWidget({super.key, required this.item}) : assert(item != null);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Hero(
        tag: Key(item.id.toString()),
        child: Material(
          child: InkWell(
            onTap: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => DetailsPage(item: item)));
            },
            child: Card(
              color: MyTheme.rosePink,
              child: Container(
                padding: EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Expanded(child: Image.network(item.imageUrl)),
                    Expanded(
                        child: Row(
                      children: [
                        Expanded(
                            child: Text(
                          item.name,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        )),
                        Expanded(
                            child: Text(
                          "\$${item.price}",
                          textAlign: TextAlign.end,
                          style: TextStyle(
                              color: Colors.brown, fontWeight: FontWeight.bold),
                        ))
                      ],
                    )),
                    Expanded(
                        child: Text(
                      item.desc,
                      overflow: TextOverflow.fade,
                    ))
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
