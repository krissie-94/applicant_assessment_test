import 'package:flutter/material.dart';
import '../utils/responsiveLayout.dart';
import '../reusesablewidget/reusesablewidget.dart';
import 'signin.dart';

class NavBar extends StatelessWidget {
  // Navigation Bar Items
  final navLinks = ["Home", "About Us", "Contact"];

  List<Widget> navItem() {
    return navLinks.map((text) {
      return Padding(
        padding: EdgeInsets.only(left: 18),
        child: Text(text,
            style: TextStyle(
              fontFamily: "Montserrat-Bold",
              fontWeight: FontWeight.bold,
            )),
      );
    }).toList();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35, vertical: 28),
      child: Row(
        // After doing Wrap with Row to the above Row,
        // below line of code doesn't seem to have effect
        // anymore on Container, SizedBox and Text.
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                width: 115,
                height: 58,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: NetworkImage("assets/images/project_logo.png")),
                  borderRadius: BorderRadius.all(Radius.circular(8.0)),
                ),
              ),
              SizedBox(
                width: 16,
                // child: Text("ttest"),
              ),
              Text("Applicant Assessment Test",
                  style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      fontFamily: "Montserrat-Regular",
                      color: Color(0xFF8591B0)))
            ],
          ),
          // Responsive Layout
          if (!ResponsiveLayout.isSmallScreen(context))
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[...navItem()]..add(
                    InkWell(
                      child: Container(
                        margin: EdgeInsets.only(left: 20),
                        // width: 150,
                        // height: 60,
                        decoration: BoxDecoration(
                            gradient: LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 153, 209, 171),
                                  Color.fromARGB(255, 188, 192, 191)
                                ],
                                begin: Alignment.bottomRight,
                                end: Alignment.topLeft),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  color: Color(0xFF6078ea).withOpacity(.3),
                                  offset: Offset(0, 8),
                                  blurRadius: 8)
                            ]),
                        child: Material(
                            color: Colors.transparent,
                            child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(32.0)),
                                minimumSize: Size(80, 50),
                                primary: Color.fromARGB(
                                    255, 153, 209, 171), // background
                                onPrimary: Colors.white,

                                // foreground
                              ),
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => SignIn()));
                              },
                              child: Text('Login or Signup',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 17,
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: "Montserrat-Bold",
                                  )),
                            )),
                      ),
                    ),
                  ))
          else
            Image.network("assets/icons8-menu.png", width: 50, height: 50)
        ],
      ),
    );
  }
}


// child: Center(
                        //     // signInsignUpButton(context, "Login or Signup", () {
                        //     //   Navigator.push(
                        //     //       context,
                        //     //       MaterialPageRoute(
                        //     //           builder: (context) => Home()));
                        //     // }),

                        //         child: Text("Login or Signup",

                        //             style: TextStyle(
                        //                 color: Colors.white,
                        //                 fontSize: 18,
                        //                 letterSpacing: 1,
                        //                 fontFamily: "Montserrat-Bold")
                        //                 ),
                        //     //              Navigator.push(
                        //     // context, MaterialPageRoute(builder: (context) => Home()));