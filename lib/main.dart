import 'package:flutter/material.dart';

import 'utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Business Card',
        home: Scaffold(
          body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/images/cardbackground.png"),
                    fit: BoxFit.fill)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 35,
                          color: Constants.avatarShadowColor,
                          spreadRadius: 1)
                    ],
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/me.jpg'),
                    radius: 100,
                  ),
                ),
                SizedBox(
                  height: 45.0,
                ),
                Text('Kevin Guillen',
                    style: TextStyle(
                      fontSize: Constants.personNameFontSize,
                      fontWeight: FontWeight.bold,
                      color: Constants.personNameTextColor,
                      letterSpacing: 1.0,
                    )),
                SizedBox(
                  height: 10.0,
                ),
                Text(
                  'Flutter Developer Trainee',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    color: Constants.positionTextColor,
                    letterSpacing: 1.0,
                  ),
                ),
                SizedBox(
                  height: 80.0,
                  width: 300.0,
                  child: Divider(
                    thickness: 2.0,
                    color: Colors.blueAccent.shade100,
                  ),
                ),
                Card(
                  color: Colors.black12,
                  child: ListTile(
                    leading: Container(
                      padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
                      child: Icon(
                        Icons.phone,
                        color: Constants.phoneIconColor,
                      ),
                    ),
                    title: Text(
                      '+54 9 11 2494 607181',
                      style: TextStyle(
                        fontSize: Constants.phoneNumberFontSize,
                        letterSpacing: 1.0,
                        color: Constants.contactInfoTextColor,
                      ),
                    ),
                    subtitle: Text(
                      "Cell Phone",
                      style: TextStyle(
                        color: Constants.contactInfoTextColor,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 10.0),
                Card(
                  color: Constants.cardsBackgroundColor,
                  child: ListTile(
                    leading: Container(
                      padding: const EdgeInsets.fromLTRB(0.0, 8.0, 0.0, 0.0),
                      child: Icon(
                        Icons.email,
                        color: Constants.emailIconColor,
                      ),
                    ),
                    title: Text(
                      'kevin.guillen@globant.com',
                      style: TextStyle(
                        fontSize: Constants.emailFontSize,
                        letterSpacing: 1.0,
                        color: Constants.contactInfoTextColor,
                      ),
                    ),
                    subtitle: Text(
                      "Email",
                      style: TextStyle(
                        color: Constants.contactInfoTextColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
