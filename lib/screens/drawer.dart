import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:resturant_app/screens/notifications.dart';
import 'package:resturant_app/screens/user_profile_screen.dart';

class navigationdrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Material(
        color: Colors.pink,
        child: ListView(
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(color: Colors.white),
              accountName: Text(
                'Kim Kardar',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
              accountEmail: Text(
                'Kardar@gmail.com',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 18.0,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: AssetImage('assets/images/13.jpeg'),
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                iconColor: Colors.white,
                leading: Icon(
                  Icons.person,
                  size: 30.0,
                ),
                title: Text(
                  'Profile',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => ProfilePage(),
                    ),
                  );
                },
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                iconColor: Colors.white,
                leading: Icon(
                  Icons.settings,
                  size: 30.0,
                ),
                title: Text(
                  'Settings',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                onTap: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                iconColor: Colors.white,
                leading: Icon(
                  Icons.notifications,
                  size: 30.0,
                ),
                title: Text(
                  'Notifications',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => notification(),
                    ),
                  );
                },
              ),
            ),
            Divider(
              thickness: 1.5,
              color: Colors.white,
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                iconColor: Colors.white,
                leading: Icon(Icons.shopping_cart, size: 30.0),
                title: Text(
                  'Shopping Cart',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                onTap: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                iconColor: Colors.white,
                leading: Icon(
                  Icons.check_box,
                  size: 30.0,
                ),
                title: Text(
                  'Previous Orders',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                onTap: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                iconColor: Colors.white,
                leading: Icon(
                  Icons.wallet_giftcard,
                  size: 30.0,
                ),
                title: Text(
                  'Your Wallet',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                onTap: () {},
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20.0),
              child: ListTile(
                iconColor: Colors.white,
                leading: Icon(
                  Icons.close,
                  size: 30.0,
                ),
                title: Text(
                  'Close',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
                onTap: () {
                  Navigator.pop(context);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
