import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: new Text('Home Page'),
          centerTitle: true,
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              new Text(' You r Logged in'),
              SizedBox(
                height: 15.0,
              ),
              new OutlineButton(
                onPressed: () {
                  FirebaseAuth.instance.signOut().then((value) {
                    Navigator.of(context).pushReplacementNamed('/landingpage');
                  }).catchError((e) {
                    print(e);
                  });
                },
                borderSide: BorderSide(
                    color: Colors.blue, style: BorderStyle.solid, width: 3.0),
                child: Text('Logout'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
