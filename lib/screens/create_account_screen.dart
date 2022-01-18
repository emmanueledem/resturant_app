import 'package:flutter/material.dart';
import 'package:resturant_app/screens/account_create_success.dart';
import 'package:resturant_app/screens/login_screen.dart';

class CreateAccount extends StatelessWidget {
  final color = Color(0xffE7F2F8);

  final UserName = TextFormField(
    keyboardType: TextInputType.name,
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.person),
      hintText: 'Your Name',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  );

  final PhoneNumber = TextFormField(
    keyboardType: TextInputType.number,
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.call),
      prefixStyle: TextStyle(color: Colors.red),
      hintText: 'Phone Number',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  );

  final EmailAddress = TextFormField(
    keyboardType: TextInputType.emailAddress,
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.mail),
      hintText: 'Your EmailAdress',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  );

  final Password = TextFormField(
    obscureText: true,
    decoration: InputDecoration(
      prefixIcon: Icon(Icons.lock),
      hintText: 'Your Password',
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
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
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: Container(
            margin: EdgeInsets.only(top: 0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.only(top: 30),
                  child: Text(
                    'Create an account',
                    style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.bold,
                        fontSize: 30),
                  ),
                ),
                Container(
                  height: 25,
                ),
                UserName,
                Container(
                  height: 25,
                ),
                PhoneNumber,
                Container(
                  height: 25,
                ),
                EmailAddress,
                Container(
                  height: 25,
                ),
                Password,
                Container(
                  height: 25,
                ),
                Center(
                  child: MaterialButton(
                    minWidth: double.infinity,
                    shape: StadiumBorder(),
                    padding: EdgeInsets.all(20),
                    color: Colors.pink,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (Context) =>
                                  SuccessPage_CreateAccount()));
                    },
                    child: Text(
                      'Create an account',
                      style: TextStyle(color: Colors.white, fontSize: 25.0),
                    ),
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 25),
                  child: Text(
                    '| Sign Up With',
                    style: TextStyle(
                        color: Colors.pink,
                        fontWeight: FontWeight.w800,
                        fontSize: 20),
                  ),
                ),
                Container(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(30)),
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "Twitter Account",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Text(
                      'OR',
                      style: TextStyle(color: Colors.pink, fontSize: 16),
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: color,
                          borderRadius: BorderRadius.circular(30)),
                      padding: EdgeInsets.all(20),
                      child: Text(
                        "Google Account",
                        style: TextStyle(
                            color: Colors.black,
                            fontSize: 15.0,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Already Have an account?',
                      style: TextStyle(fontSize: 18.0, color: Colors.grey),
                    ),
                    Container(
                      child: MaterialButton(
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Text(
                          'Log in!',
                          style: TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
