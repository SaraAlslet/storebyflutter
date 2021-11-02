import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      child: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Sara Alemam'),
              accountEmail: Text('SaraAlemam547@gmail.com'),
              currentAccountPicture: CircleAvatar(
                child: Icon(Icons.person),
                backgroundColor: Colors.orange,
              ),
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/download.jpg'),
                  fit: BoxFit.fill,
                ),
              ),
            ),

            ///
            ListTile(
              title: Text(
                'الصفحة الرئيسية',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.home,
                color: Colors.blue,
                size: 20,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'الصفحة الرئيسية',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.home,
                color: Colors.blue,
                size: 20,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'الاقسام',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.home,
                color: Colors.blue,
                size: 20,
              ),
              onTap: () {},
            ),
            ListTile(
              title: Text(
                'الاعدادات',
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold),
              ),
              leading: Icon(
                Icons.home,
                color: Colors.blue,
                size: 20,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}
