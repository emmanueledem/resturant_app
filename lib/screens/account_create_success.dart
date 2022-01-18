import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:resturant_app/screens/login_screen.dart';

class SuccessPage_CreateAccount extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Articulate',
          style: TextStyle(fontSize: 30.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back_ios_new_sharp),
        ),
        // leading: Icon(Icons.arrow_back_ios_new_sharp),
      ),
      body: Center(
          child: Container(
        padding: EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Text(
              'Welcome to Articulate App',
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              'Your account was sucessfully created!',
              style: TextStyle(
                fontSize: 20.0,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              'Thanks for joining us...',
              style: TextStyle(
                fontSize: 20.0,
                fontStyle: FontStyle.italic,
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            MaterialButton(
              padding: EdgeInsets.all(20),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => LoginScreen(),
                  ),
                );
              },
              minWidth: double.infinity,
              color: Colors.pink,
              child: Text(
                'Get Started',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30.0,
                ),
              ),
            ),
            SizedBox(
              height: 50.0,
            ),
            Container(
              width: double.infinity,
              child: Image(
                image: AssetImage('assets/images/5.jpg'),
              ),
            ),
          ],
        ),
      )),
    );
  }
}
