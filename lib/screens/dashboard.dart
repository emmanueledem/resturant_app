import 'package:flutter/material.dart';
import 'package:resturant_app/screens/drawer.dart';
import 'package:resturant_app/screens/notifications.dart';
import 'package:resturant_app/screens/single_productView.dart';
import 'package:resturant_app/screens/welcome_screen.dart';

class dashboard extends StatelessWidget {
  @override
  Color color = Color(0xffEEEBDD);
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: navigationdrawer(),
      bottomNavigationBar:
          BottomNavigationBar(items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            size: 35.0,
          ),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.shopping_cart,
            size: 35.0,
          ),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.notification_important_sharp,
            size: 35.0,
          ),
          label: 'Notification',
        ),
        // BottomNavigationBarItem(
        //   icon: Icon(Icons.favorite),
        //   label: 'Favorite',
        // ),
      ]),
      appBar: AppBar(
        title: Text(
          'Articulate',
          style: TextStyle(fontSize: 30.0),
        ),
        centerTitle: true,
        backgroundColor: Colors.pink,

        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 4.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => notification()));
              },
              icon: Icon(Icons.notification_important_outlined),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: IconButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Welcome_screen(),
                  ),
                );
              },
              icon: Icon(Icons.logout_rounded),
            ),
          ),
        ],
        // leading: Icon(Icons.arrow_back_ios_new_sharp),
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 10, top: 20, bottom: 10.0),
                child: Text(
                  'Our Market Place',
                  style: TextStyle(
                      color: Colors.pink,
                      fontWeight: FontWeight.bold,
                      fontSize: 25),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 25),
                child: Text(
                  'Top Meals',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 25),
                  textAlign: TextAlign.start,
                ),
              ),
              // the  first row list
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 250.0,
                width: 800.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // first colum container start
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => single_view_product()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 15, right: 10),
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image(
                                  height: 110,
                                  image: AssetImage('assets/images/2.jpg'),
                                ),
                              ),
                            ),
                            Text(
                              'Food Name',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.w500),
                            ),
                            // first row
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 16.0,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.0),
                            // second row
                            Row(
                              children: [
                                Icon(
                                  Icons.money,
                                  size: 25.0,
                                  color: Colors.pink,
                                ),
                                Text(
                                  '15',
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.pink,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            // last row
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 100.0),
                                  child: Icon(
                                    Icons.lock,
                                    size: 25.0,
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(
                                  Icons.favorite,
                                  size: 25.0,
                                  color: Colors.black,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => single_view_product()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 15, right: 10),
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image(
                                  height: 110,
                                  image: AssetImage('assets/images/3.jpg'),
                                ),
                              ),
                            ),
                            Text(
                              'Food Name',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.w500),
                            ),
                            // first row
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 16.0,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.0),
                            // second row
                            Row(
                              children: [
                                Icon(
                                  Icons.money,
                                  size: 25.0,
                                  color: Colors.pink,
                                ),
                                Text(
                                  '15',
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.pink,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            // last row
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 100.0),
                                  child: Icon(
                                    Icons.lock,
                                    size: 25.0,
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(
                                  Icons.favorite,
                                  size: 25.0,
                                  color: Colors.black,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => single_view_product()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 15, right: 10),
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image(
                                  height: 110,
                                  image: AssetImage('assets/images/4.jpg'),
                                ),
                              ),
                            ),
                            Text(
                              'Food Name',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.w500),
                            ),
                            // first row
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 16.0,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.0),
                            // second row
                            Row(
                              children: [
                                Icon(
                                  Icons.money,
                                  size: 25.0,
                                  color: Colors.pink,
                                ),
                                Text(
                                  '15',
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.pink,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            // last row
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 100.0),
                                  child: Icon(
                                    Icons.lock,
                                    size: 25.0,
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(
                                  Icons.favorite,
                                  size: 25.0,
                                  color: Colors.black,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => single_view_product()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 15, right: 10),
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image(
                                  height: 110,
                                  image: AssetImage('assets/images/5.jpg'),
                                ),
                              ),
                            ),
                            Text(
                              'Food Name',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.w500),
                            ),
                            // first row
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 16.0,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.0),
                            // second row
                            Row(
                              children: [
                                Icon(
                                  Icons.money,
                                  size: 25.0,
                                  color: Colors.pink,
                                ),
                                Text(
                                  '15',
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.pink,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            // last row
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 100.0),
                                  child: Icon(
                                    Icons.lock,
                                    size: 25.0,
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(
                                  Icons.favorite,
                                  size: 25.0,
                                  color: Colors.black,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => single_view_product()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 15, right: 10),
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image(
                                  height: 110,
                                  image: AssetImage('assets/images/6.jpg'),
                                ),
                              ),
                            ),
                            Text(
                              'Food Name',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.w500),
                            ),
                            // first row
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 16.0,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.0),
                            // second row
                            Row(
                              children: [
                                Icon(
                                  Icons.money,
                                  size: 25.0,
                                  color: Colors.pink,
                                ),
                                Text(
                                  '15',
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.pink,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            // last row
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 100.0),
                                  child: Icon(
                                    Icons.lock,
                                    size: 25.0,
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(
                                  Icons.favorite,
                                  size: 25.0,
                                  color: Colors.black,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    // first colum container end
                  ],
                ),
              ),

              Padding(
                padding: const EdgeInsets.fromLTRB(15, 15, 15, 0),
                child: Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.pink,
                        borderRadius: BorderRadius.circular(30)),
                    width: double.infinity,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Become an affiliate member ... Over 18,000,000 affilates currently',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 23.0,
                                color: Colors.white),
                          ),
                          Container(
                            height: 10,
                          ),
                          MaterialButton(
                            minWidth: double.infinity,
                            color: Colors.white,
                            shape: StadiumBorder(),
                            onPressed: () {},
                            child: Text(
                              'Get Started',
                              style: TextStyle(
                                  fontSize: 20.0, fontWeight: FontWeight.bold),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.only(left: 25, top: 20),
                child: Text(
                  'Most purchased Meals',
                  style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 25),
                  textAlign: TextAlign.start,
                ),
              ),
              // the  first row list
              Container(
                margin: EdgeInsets.only(top: 10),
                height: 250.0,
                width: 800.0,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    // first colum container start
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => single_view_product()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 15, right: 10),
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image(
                                  height: 110,
                                  image: AssetImage('assets/images/8.jpg'),
                                ),
                              ),
                            ),
                            Text(
                              'Food Name',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.w500),
                            ),
                            // first row
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 16.0,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.0),
                            // second row
                            Row(
                              children: [
                                Icon(
                                  Icons.money,
                                  size: 25.0,
                                  color: Colors.pink,
                                ),
                                Text(
                                  '15',
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.pink,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            // last row
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 100.0),
                                  child: Icon(
                                    Icons.lock,
                                    size: 25.0,
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(
                                  Icons.favorite,
                                  size: 25.0,
                                  color: Colors.black,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => single_view_product()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 15, right: 10),
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image(
                                  height: 110,
                                  image: AssetImage('assets/images/9.jpg'),
                                ),
                              ),
                            ),
                            Text(
                              'Food Name',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.w500),
                            ),
                            // first row
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 16.0,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.0),
                            // second row
                            Row(
                              children: [
                                Icon(
                                  Icons.money,
                                  size: 25.0,
                                  color: Colors.pink,
                                ),
                                Text(
                                  '15',
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.pink,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            // last row
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 100.0),
                                  child: Icon(
                                    Icons.lock,
                                    size: 25.0,
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(
                                  Icons.favorite,
                                  size: 25.0,
                                  color: Colors.black,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => single_view_product()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 15, right: 10),
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image(
                                  height: 110,
                                  image: AssetImage('assets/images/10.jpg'),
                                ),
                              ),
                            ),
                            Text(
                              'Food Name',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.w500),
                            ),
                            // first row
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 16.0,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.0),
                            // second row
                            Row(
                              children: [
                                Icon(
                                  Icons.money,
                                  size: 25.0,
                                  color: Colors.pink,
                                ),
                                Text(
                                  '15',
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.pink,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            // last row
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 100.0),
                                  child: Icon(
                                    Icons.lock,
                                    size: 25.0,
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(
                                  Icons.favorite,
                                  size: 25.0,
                                  color: Colors.black,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => single_view_product()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 15, right: 10),
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image(
                                  height: 110,
                                  image: AssetImage('assets/images/11.jpg'),
                                ),
                              ),
                            ),
                            Text(
                              'Food Name',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.w500),
                            ),
                            // first row
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 16.0,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.0),
                            // second row
                            Row(
                              children: [
                                Icon(
                                  Icons.money,
                                  size: 25.0,
                                  color: Colors.pink,
                                ),
                                Text(
                                  '15',
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.pink,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            // last row
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 100.0),
                                  child: Icon(
                                    Icons.lock,
                                    size: 25.0,
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(
                                  Icons.favorite,
                                  size: 25.0,
                                  color: Colors.black,
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => single_view_product()));
                      },
                      child: Container(
                        margin: EdgeInsets.only(left: 15, right: 10),
                        decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10.0),
                                child: Image(
                                  height: 110,
                                  image: AssetImage('assets/images/12.jpg'),
                                ),
                              ),
                            ),
                            Text(
                              'Food Name',
                              style: TextStyle(
                                  fontSize: 25.0, fontWeight: FontWeight.w500),
                            ),
                            // first row
                            Row(
                              children: [
                                Icon(
                                  Icons.star,
                                  size: 16.0,
                                ),
                                Text(
                                  '4.5',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            SizedBox(height: 5.0),
                            // second row
                            Row(
                              children: [
                                Icon(
                                  Icons.money,
                                  size: 25.0,
                                  color: Colors.pink,
                                ),
                                Text(
                                  '15',
                                  style: TextStyle(
                                      fontSize: 25.0,
                                      color: Colors.pink,
                                      fontWeight: FontWeight.w500),
                                ),
                              ],
                            ),
                            // last row
                            Row(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(right: 100.0),
                                  child: Icon(
                                    Icons.lock,
                                    size: 25.0,
                                    color: Colors.black,
                                  ),
                                ),
                                Icon(
                                  Icons.favorite,
                                  size: 25.0,
                                  color: Colors.black,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    // first colum container end
                    Container(
                      height: 210.0,
                    ),
                  ],
                ),
              ),
              // the second row list
            ],
          ),
        ),
      ),
    );
  }
}
