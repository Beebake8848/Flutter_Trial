// ignore_for_file: use_key_in_widget_constructors

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_declarations
    final imageUrl =
        "https://media.licdn.com/dms/image/D5635AQG-001hwKEwiQ/profile-framedphoto-shrink_100_100/0/1690044698682?e=1691780400&v=beta&t=TT6Nel1vi8wcyWE6QAKh-r--onlmrcE5w8Q5VQi4f0g";
    return Drawer(
      child: Container(
        color: Colors.amber,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              padding: EdgeInsets.zero,
              child: UserAccountsDrawerHeader(
                margin: EdgeInsets.zero,
                accountName: const Text("Bibek Karki"),
                accountEmail: const Text("kbibek448@gmail.com"),
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(imageUrl),
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.black,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.black,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            ),
            const ListTile(
              leading: Icon(
                CupertinoIcons.mail,
                color: Colors.black,
              ),
              title: Text(
                "Email me",
                textScaleFactor: 1.2,
                style: TextStyle(
                  color: Colors.black,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
