import 'package:flutter/material.dart';
import 'package:padishea/navigations/padishea_navigator.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => new _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.white,
      body: new Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          new Expanded(
            flex: 1,
            child: new Container(
              padding: const EdgeInsets.only(top: 84.0),
              child: new Text(
                'Padishea',
                style: new TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 24.0,
                  color: Colors.teal,
                  fontFamily: 'Avenir',
                ),
              ),
            ),
          ),
          new Expanded(
            flex: 5,
            child: new Container(
              child: new Image.asset("assets/logo.jpg"),
            ),
          ),
          new Expanded(
            flex: 2,
            child: new Column(
              children: <Widget>[
                new Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: new Material(
                    borderRadius: BorderRadius.circular(30.0),
                    shadowColor: Colors.greenAccent.shade100,
                    elevation: 5.0,
                    child: new MaterialButton(
                      minWidth: 200.0,
                      height: 42.0,
                      onPressed: () {
                        PadisheaNavigator.gotoMain(context);
                      },
                      color: Colors.teal,
                      child: new Text(
                        'Login',
                        style: new TextStyle(
                            color: Colors.white, fontFamily: 'Avenir'),
                      ),
                    ),
                  ),
                ),
                new FlatButton(
                  child: new Text(
                    'Register',
                    style: new TextStyle(
                      color: Colors.teal,
                      fontSize: 16.0,
                      fontFamily: 'Avenir',
                    ),
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
