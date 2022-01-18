import 'package:flutter/material.dart';
import 'package:resturant_app/screens/create_account_screen.dart';
import 'package:resturant_app/screens/login_screen.dart';

const color = Color(0xffE7F2F8);

class Welcome_screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          child: Center(
            child: Column(
              children: [
                SizedBox(height: 50.0),
                Image.asset(
                  'assets/images/1.png',
                  width: 250.0,
                ),
                Container(
                  height: 10,
                ),
                Text(
                  'Welcome to Articlate!',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 25.0,
                  ),
                ),
                Text(
                  'serving your best meals...',
                  style: TextStyle(
                    fontStyle: FontStyle.italic,
                    fontSize: 20.0,
                  ),
                ),
                Container(
                  height: 100,
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  padding: EdgeInsets.all(20),
                  shape: StadiumBorder(),
                  color: Colors.pink,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateAccount(),
                      ),
                    );
                  },
                  child: Text(
                    'Create an account',
                    style: TextStyle(color: Colors.white, fontSize: 25.0),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 20),
                  child: Text(
                    'Already have anccount?',
                    style: TextStyle(fontSize: 20.0, color: Colors.grey),
                  ),
                ),
                MaterialButton(
                  minWidth: double.infinity,
                  padding: EdgeInsets.all(20),
                  shape: StadiumBorder(
                    side: BorderSide(
                        color: Colors.pink, style: BorderStyle.solid),
                  ),
                  color: Colors.white,
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (Context) => LoginScreen(),
                      ),
                    );
                  },
                  child: Text(
                    'Log in',
                    style: const TextStyle(color: Colors.pink, fontSize: 25.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
