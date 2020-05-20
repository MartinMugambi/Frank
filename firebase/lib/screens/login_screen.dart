import 'package:firebase/screens/signup_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  static final String id = "login_screen";
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
   
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: <Widget>[
            Container(
      height: 270.0,
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.only(top: 100.0, left: 50.0),
        child: Text(
          'Login Page',
          style: TextStyle(color: Colors.white, fontSize: 20.0),
        ),
      ),
      color: Colors.blueGrey,
            ),
            Form(
        child: Column(
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: 30.0, vertical: 10.0),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Email',
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
          ),
        ),
        Padding(
          padding:
              const EdgeInsets.symmetric(horizontal: 30.0, vertical: 10),
          child: TextFormField(
            decoration: InputDecoration(
              labelText: 'Enter Password',
              enabledBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              focusedBorder: UnderlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
            obscureText: true,
          ),
        ),
        SizedBox(
          height: 20.0,
        ),
        Container(
          width: 340.0,
          height: 45.0,
          child: FlatButton(
            onPressed: () {},
            shape:  RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(22.0)
            ),
            color: Colors.blueGrey,
            padding: EdgeInsets.all(10.0),
            child: Text(
              'Login',
              style: TextStyle(fontSize: 15.0, color: Colors.white),
            ),
          ),
        ),
        SizedBox(
         height: 20.0,
        ),
         Row(
           mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Don't have and Account?"),
            FlatButton(
              onPressed: (){
                  Navigator.pushReplacementNamed(context, SignUpScreen.id);
              }, child: Text('Sign Up')
              ),
          ],
         ),
      ],
            ))
          ],
        ),
    );
  }
}
