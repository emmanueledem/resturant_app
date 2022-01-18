import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  Color color = Colors.white60;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: color,
        elevation: 0,
        leading: Container(
          margin: EdgeInsets.fromLTRB(10, 10, 0, 0),
          decoration: BoxDecoration(
            color: Colors.pink,
            borderRadius: BorderRadius.circular(100),
          ),
          child: IconButton(
            iconSize: 18.0,
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back_ios_new_sharp),
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
            child: Icon(
              Icons.list,
              color: Colors.pink,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Container(
            margin: EdgeInsets.only(top: 30),
            child: Column(
              children: [
                CircleAvatar(
                  maxRadius: 65,
                  backgroundImage: AssetImage('assets/images/13.jpeg'),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Image(
                      width: 90.0,
                      image: AssetImage('assets/images/whatsapp.jpeg'),
                    ),
                    Image(
                      width: 35.0,
                      image: AssetImage('assets/images/google.jpeg'),
                    ),
                    Image(
                      width: 90.0,
                      image: AssetImage('assets/images/whatsapp.jpeg'),
                    ),
                    Image(
                      width: 35.0,
                      image: AssetImage('assets/images/google.jpeg'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Text(
                  'Kim Kadar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
                Text(
                  'Kadar@gmail.com',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                Text(
                  'Joined - 19th April 1956',
                  style: TextStyle(
                    fontSize: 18,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Text(
                  'Software Developer and Open Source enthusiastic',
                  style: TextStyle(
                    fontSize: 20,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: 50,
                ),
                ProfileItems('Meals Purchased', '83'),
                ProfileItems('Meals in cart', '14'),
                ProfileItems('My clients', '25'),
                ProfileItems('Favorite Meals', '10'),
                ProfileItems('Messages', '9'),
                ProfileItems('Notifications', '410'),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget ProfileItems(meals, count) {
    return (Padding(
      padding: const EdgeInsets.only(left: 40, right: 40, bottom: 20),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.pink,
          borderRadius: BorderRadius.circular(30),
        ),
        child: Padding(
          padding: const EdgeInsets.all(14.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                meals,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
              Text(
                count,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20.0,
                ),
              ),
            ],
          ),
        ),
      ),
    ));
  }
}
