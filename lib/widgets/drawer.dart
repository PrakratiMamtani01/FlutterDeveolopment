import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/utils/themes.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  final imageUrl =
      "https://media.licdn.com/dms/image/D4D03AQE21Qt7LYrBQw/profile-displayphoto-shrink_200_200/0/1682278138714?e=2147483647&v=beta&t=HuxR6HXpY_XZn0M15UwK2NlBylmmZIZs_HlmJt35LTY";

  @override
  Widget build(BuildContext context) {
    return Drawer(
        child: Container(
      color: MyTheme.rosePink,
      child: ListView(
        children: [
          DrawerHeader(
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: MyTheme.rosePink),
              margin: EdgeInsets.zero,
              accountName: Text(
                "Prakrati Mamtani",
                style: TextStyle(color: Colors.brown),
              ),
              accountEmail: Text(
                "pm3484@nyu.edu",
                style: TextStyle(color: Colors.brown),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imageUrl),
              ),
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.home,
              color: Colors.brown,
            ),
            title: Text(
              "Home",
              style: TextStyle(color: Colors.brown),
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.profile_circled,
              color: Colors.brown,
            ),
            title: Text(
              "Profile",
              style: TextStyle(color: Colors.brown),
              textScaleFactor: 1.2,
            ),
          ),
          ListTile(
            leading: Icon(
              CupertinoIcons.mail,
              color: Colors.brown,
            ),
            title: Text(
              "Contact Us",
              style: TextStyle(color: Colors.brown),
              textScaleFactor: 1.2,
            ),
          ),
        ],
      ),
    ));
  }
}
