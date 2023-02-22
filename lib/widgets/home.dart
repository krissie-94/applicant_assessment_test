import 'package:flutter/material.dart';
import 'signin.dart';
import 'package:flutter/material.dart';

void main() => runApp(const Home());

class Home extends StatelessWidget {
  const Home({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(home: NavigationExample());
  }
}

class NavigationExample extends StatefulWidget {
  const NavigationExample({key});

  @override
  State<NavigationExample> createState() => _NavigationExampleState();
}

class _NavigationExampleState extends State<NavigationExample> {
  int currentPageIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            icon: Icon(Icons.explore),
            label: 'Explore',
          ),
          NavigationDestination(
            icon: Icon(Icons.upload_file),
            label: 'Upload Resume',
          ),
          NavigationDestination(
            // selectedIcon: Icon(Icons.bookmark),
            icon: Icon(Icons.settings),
            label: 'Manage Questions',
          ),
        ],
      ),
      body: <Widget>[
        Container(
          color: Color.fromARGB(255, 186, 178, 178),
          alignment: Alignment.center,
          child: const Text('Explore and View Employees Details'),
        ),
        Container(
          color: Colors.green,
          alignment: Alignment.center,
          child: const Text('Enter Applicant Resume Information'),
        ),
        Container(
          color: Colors.white,
          alignment: Alignment.center,
          child: const Text('View Activities and Track Activities'),
        ),
      ][currentPageIndex],
    );
  }
}


  


















// class Home extends StatefulWidget {
//   const Home({key}) : super(key: key);

//   @override
//   _HomeState createState() => _HomeState();
// }

// class _HomeState extends State<Home> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Center(
//         child: ElevatedButton(
//           child: Text("Logout",
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//           onPressed: () {
//             Navigator.push(
//                 context, MaterialPageRoute(builder: (context) => SignIn()));
//           },
//         ),
//       ),
//     );
//   }
// }
