import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const imageUrl = "asserts/img/my img.jpg";
    return Drawer(
      child: Container(
        color: Colors.deepPurpleAccent,
        child: ListView(
          padding: EdgeInsets.zero,
          children: const [
            DrawerHeader(
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                  margin: EdgeInsets.zero,
                  accountName: Text("Zaheer"),
                  accountEmail: Text("mza57886@gmail.com"),
                  currentAccountPicture: CircleAvatar(
                    backgroundImage: AssetImage(imageUrl),
                  ),
                )),
            ListTile(
              leading: Icon(
                CupertinoIcons.home,
                color: Colors.white,
              ),
              title: Text(
                "Home",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.profile_circled,
                color: Colors.white,
              ),
              title: Text(
                "Profile",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
            ListTile(
              leading: Icon(
                CupertinoIcons.phone_circle,
                color: Colors.white,
              ),
              title: Text(
                "Contect",
                textScaleFactor: 1.5,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
