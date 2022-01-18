import 'package:flutter/material.dart';

Color color = Color(0xffEEEBDD);

class single_view_product extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.white,
        child: Icon(
          Icons.lock_clock_outlined,
          color: Colors.pink,
          size: 35.0,
        ),
      ),
      backgroundColor: color,
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
              Icons.favorite,
              color: Colors.pink,
              size: 30.0,
            ),
          ),
        ],
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: 20),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(40),
                child: Image(
                  width: 300.0,
                  image: AssetImage('assets/images/2.jpg'),
                ),
              ),
            ),
            Expanded(
              child: Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(100),
                    topRight: Radius.circular(100),
                  ),
                ),
                width: double.infinity,
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 19.0),
                      child: Text(
                        'Food Name',
                        style: TextStyle(
                            fontSize: 25.0, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 19.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.money,
                            size: 25.0,
                            color: Colors.pink,
                          ),
                          Text(
                            "15",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.pink),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 25.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.only(right: 18),
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(
                              Icons.keyboard_arrow_left_outlined,
                              size: 25.0,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            "15",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.pink),
                          ),
                          Container(
                            margin: EdgeInsets.only(left: 20),
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(30),
                            ),
                            child: Icon(
                              Icons.keyboard_arrow_right_outlined,
                              size: 25.0,
                              color: Colors.white,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.star,
                                size: 20,
                              ),
                              Text(
                                '4.5',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.fireplace_sharp,
                                size: 20,
                              ),
                              Text(
                                '230Kcal',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.timer,
                                size: 20,
                              ),
                              Text(
                                '30m',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(
                          top: 50.0, left: 10.0, right: 10),
                      child: Text(
                        'Lorem ipsum dolor sit, Sitpurewe consectuer adipsipcing elit rhor rhonius, ipsum luctus uehere',
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
