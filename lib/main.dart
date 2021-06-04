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
          child: SafeArea(
            top: true,
            bottom: true,
            left: true,
            right: true,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                          blurRadius: Constants.avatarBlurShadow,
                          color: Constants.avatarShadowColor,
                          spreadRadius: 1)
                    ],
                  ),
                  child: CircleAvatar(
                    backgroundImage: AssetImage('assets/images/me.jpg'),
                    radius: Constants.avatarRadius,
                  ),
                ),
                SizedBox(
                  height: Constants.avatarAndPersonNameSizeBoxHeight,
                ),
                Text('Kevin Guillen',
                    style: TextStyle(
                      fontSize: Constants.personNameFontSize,
                      fontWeight: FontWeight.bold,
                      color: Constants.personNameTextColor,
                      letterSpacing: Constants.letterSpacing,
                    )),
                SizedBox(
                  height: Constants.personNameAndPositionSizeBoxHeight,
                ),
                Text(
                  'Flutter Developer Trainee',
                  style: TextStyle(
                    fontSize: Constants.positionFontSize,
                    fontWeight: FontWeight.bold,
                    color: Constants.positionTextColor,
                    letterSpacing: Constants.letterSpacing,
                  ),
                ),
                Column(
                  children: [
                    Divider(
                      height: 60,
                      thickness: 3,
                      color: Colors.blueAccent.shade100,
                      indent: 60,
                      endIndent: 60,
                    )
                  ],
                ),
                Card(
                  color: Constants.cardsBackgroundColor,
                  child: ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(
                        top: 8.0,
                      ),
                      child: Icon(
                        Icons.phone,
                        color: Constants.phoneIconColor,
                      ),
                    ),
                    title: Text(
                      '+54 9 11 2494 607181',
                      style: TextStyle(
                        fontSize: Constants.phoneNumberFontSize,
                        letterSpacing: Constants.letterSpacing,
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
                SizedBox(height: Constants.phoneAndEmailSizeBoxHeight),
                Card(
                  color: Constants.cardsBackgroundColor,
                  child: ListTile(
                    leading: Padding(
                      padding: EdgeInsets.only(
                        top: 8.0,
                      ),
                      child: Icon(
                        Icons.email,
                        color: Constants.emailIconColor,
                      ),
                    ),
                    title: Text(
                      'kevin.guillen@globant.com',
                      style: TextStyle(
                        fontSize: Constants.emailFontSize,
                        letterSpacing: Constants.letterSpacing,
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
        ),
      ),
    );
  }
}
