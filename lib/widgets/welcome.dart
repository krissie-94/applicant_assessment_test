import 'package:flutter/material.dart';
import 'home.dart';

class Welcome extends StatefulWidget {
  const Welcome({key}) : super(key: key);

  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: ElevatedButton(
          style: ElevatedButton.styleFrom(
            elevation: 3,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(32.0)),
            minimumSize: Size(80, 50),
            primary: Color.fromARGB(255, 169, 183, 173), // background
            onPrimary: Colors.white,

            // foreground
          ),
          child: Text("Welcome click to continue"),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => Home()));
          },
        ),
      ),
    );
  }
}
