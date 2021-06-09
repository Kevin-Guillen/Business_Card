import 'package:flutter/material.dart';
import 'styles/styles.dart';
import 'utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(buildContext) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Business Card',
      home: Scaffold(
        backgroundColor: Colors.purple.shade200,
        body: SafeArea(
          child: Stack(
            fit: StackFit.expand,
            alignment: AlignmentDirectional.center,
            children: [
              Image.asset(
                'assets/images/cardbackground.png',
                fit: BoxFit.fill,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      boxShadow: [
                        BoxShadow(
                          blurRadius: Constants.avatarBlurShadow,
                          color: Colors.black,
                          spreadRadius: 1,
                        ),
                      ],
                    ),
                    child: CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/images/me.jpg',
                      ),
                      radius: Constants.avatarRadius,
                    ),
                  ),
                  SizedBox(
                    height: Constants.avatarAndPersonNameSizeBoxHeight,
                  ),
                  Text(
                    'Kevin Guillen',
                    style: TextStyle(
                      fontSize: Constants.personNameFontSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      letterSpacing: Constants.letterSpacing,
                    ),
                  ),
                  SizedBox(
                    height: Constants.personNameAndPositionSizeBoxHeight,
                  ),
                  Text(
                    'Flutter Developer Trainee',
                    style: TextStyle(
                      fontSize: Constants.positionFontSize,
                      fontWeight: FontWeight.bold,
                      color: Colors.black54,
                      letterSpacing: Constants.letterSpacing,
                    ),
                  ),
                  Divider(
                    height: Constants.dividerHeight,
                    thickness: Constants.dividerThickness,
                    color: Colors.blueAccent.shade100,
                    indent: Constants.dividerIndentStart,
                    endIndent: Constants.dividerIndentEnd,
                  ),
                  Card(
                    color: Colors.black12,
                    child: ListTile(
                      leading: Padding(
                        padding: EdgeInsets.only(
                          top: Constants.iconsTopPadding,
                        ),
                        child: Icon(
                          Icons.phone,
                          color: Colors.green,
                        ),
                      ),
                      title: Text(
                        '+54 9 11 2494 607181',
                        style: contactInfoTextStyle,
                      ),
                      subtitle: Text(
                        "Cell Phone",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: Constants.phoneAndEmailSizeBoxHeight,
                  ),
                  Card(
                    color: Colors.black12,
                    child: ListTile(
                      leading: Padding(
                        padding: EdgeInsets.only(
                          top: Constants.iconsTopPadding,
                        ),
                        child: Icon(
                          Icons.email,
                          color: Colors.redAccent,
                        ),
                      ),
                      title: Text('kevin.guillen@globant.com',
                          style: contactInfoTextStyle),
                      subtitle: Text(
                        "Email",
                        style: TextStyle(
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
