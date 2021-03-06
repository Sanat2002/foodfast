import 'package:flutter/material.dart';

class Forgot extends StatefulWidget {
  @override
  _ForgotState createState() => _ForgotState();
}

class _ForgotState extends State<Forgot> {
  final _controllerEMail = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(primaryColor: Colors.brown),
        home: Scaffold(
          backgroundColor: Colors.white,
          body: Center(
              child: ListView(
            children: <Widget>[
              Image(image: AssetImage('assets/forgot.png'), fit: BoxFit.cover),
              Text(
                "Forgot Password ?",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.brown,
                    fontSize: 30),
              ),
              Padding(
                padding: EdgeInsets.all(20.0),
                child: TextField(
                  style: TextStyle(
                    color: Colors.brown,
                  ),
                  controller: _controllerEMail,
                  cursorColor: Colors.amberAccent,
                  cursorHeight: 25,
                  decoration: InputDecoration(
                      hintStyle: TextStyle(
                          color: Colors.brown[300],
                          fontStyle: FontStyle.italic),
                      contentPadding: EdgeInsets.all(20.0),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.brown),
                          borderRadius: BorderRadius.all(Radius.circular(30))),
                      labelText: 'IIITB E-Mail',
                      hintText: '@iiib.org or @iiitb.ac.in',
                      prefixIcon: Icon(
                        Icons.email_rounded,
                        color: Colors.amber[300],
                      )),
                ),
              ),
              Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Padding(
                        padding: EdgeInsets.all(20.0),
                        child: RaisedButton(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(30.0),
                          ),
                          onPressed: () {},
                          child: new Text(
                            "Reset Password",
                            style: TextStyle(color: Colors.brown),
                          ),
                          color: Colors.amber[300],
                        )),
                  ]),
            ],
          )),
        ));
  }
}
