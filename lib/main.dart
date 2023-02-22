import 'package:flutter/material.dart';
// import 'package:flutter_web/material.dart';
import 'widgets/navbar.dart';
import 'utils/responsiveLayout.dart';
// import 'widgets/search.dart';

void main() {
  runApp(MaterialApp(
    title: 'Flutter Landing Page',
    debugShowCheckedModeBanner: false,
    theme: ThemeData(
      primarySwatch: Colors.blue,
    ),
    home: HomePage(),
  ));
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: Scaffold(
            backgroundColor: Colors.transparent,
            body: SingleChildScrollView(
              child: Column(
                children: <Widget>[NavBar(), Body()],
              ),
            )));
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ResponsiveLayout(
      largeScreen: LargeChild(),
      smallScreen: SmallChild(),
    );
  }
}

class LargeChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      child: Stack(
        fit: StackFit.expand,
        children: <Widget>[
          FractionallySizedBox(
            alignment: Alignment.centerRight,
            widthFactor: .6,
            // <a href="https://www.freepik.com/free-photos-vectors/people">People vector created by stories - www.freepik.com</a>

            child: Image.network("assets/test_avatar.png", scale: .55),
          ),
          FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: .6,
              child: Padding(
                  padding: EdgeInsets.only(left: 48),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text(
                          "Join Now!",
                          style: TextStyle(
                              fontSize: 60,
                              fontWeight: FontWeight.bold,
                              fontFamily: "Montserrat-Regular",
                              color: Color(0xFF111111)),
                        ),
                        RichText(
                          text: TextSpan(
                            text: "Test Your Applicants Using our Platform",
                            style: TextStyle(
                                fontSize: 20, color: Color(0xFF8591B0)),
                            children: [
                              TextSpan(
                                  style: TextStyle(
                                fontSize: 60,
                                fontWeight: FontWeight.bold,
                                // color: Colors.black54
                              ))
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 12.0, top: 20),
                          // child: Text("GO Signup NOW!"),
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        // Search()
                      ])))
        ],
      ),
    );
  }
}

class SmallChild extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Padding(
      padding: EdgeInsets.all(40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Join Now!",
            style: TextStyle(
                fontSize: 60,
                fontWeight: FontWeight.bold,
                fontFamily: "Montserrat-Regular",
                color: Color(0xFF111111)),
          ),
          RichText(
            text: TextSpan(
              text: "Test Your Applicants Using our Platform",
              style: TextStyle(fontSize: 60, color: Color(0xFF8591B0)),
              children: [
                TextSpan(
                    text: "",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      // color: Colors.black54
                    ))
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 12.0, top: 20),
            child: Text("LET'S GO Signup NOW!"),
          ),
          SizedBox(
            height: 30,
          ),
          Center(
            child: Image.network("assets/test_avatar.png", scale: .55),
            // child: Image.asset("assets/test_avatar.png", scale: 1),
          ),
          SizedBox(
            height: 32,
          ),
          // Search(),
          SizedBox(
            height: 30,
          )
        ],
      ),
    ));
  }
}
