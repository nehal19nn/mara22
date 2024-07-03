import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:test_1/pages/home.dart';
import 'package:test_1/pages/personlyinf.dart';
import 'package:test_1/pages/technical.dart';

class profile extends StatefulWidget {
  const profile({super.key});

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {


    @override
  Widget build(BuildContext context) {
return Scaffold(
      //appBar: AppBar(
        //title: const Text('Profile'),
        //backgroundColor: Color.fromARGB(255, 66, 142, 235), // Apply blue color
    // ),
      body: SingleChildScrollView( // Allow scrolling if content overflows
        padding: const EdgeInsets.all(20.0), // Add padding for aesthetics
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start, // Align content to the left
          children: [
            // Profile picture section
            const Row(
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: AssetImage('assets/dentist1.png'), // Replace with your image path
                ),
                SizedBox(width: 20.0), // Add spacing after image
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'nehal', // Replace with user name
                      style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'nehal@example.com', // Replace with user email
                      style: TextStyle(fontSize: 14.0, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 20.0), // Add spacing after profile section

            // Account information section with leading icon and divider
            const ListTile(
              leading: Icon(Icons.info, color: Colors.blue),
              title: Text(
                'Settings',
                style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              ),
            ),
            const Divider(color: Colors.grey), // Add divider line

            // Buttons section with card style and rounded corners
            Card(
              elevation: 2.0, // Add slight shadow effect
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () =>
                     Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const personlyinf()),
                    ),
                    child: Text('profile personly'),
                    style: TextButton.styleFrom(
                      //primary: Colors.blue,
                      padding: const EdgeInsets.all(15.0),
                    ),
                  ),
                  TextButton(
                    onPressed: () => 
                     Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const technical()),
                    ),
                    child: Text('Technical Support'),
                    style: TextButton.styleFrom(
                      iconColor: Colors.blue,
                      padding: const EdgeInsets.all(15.0),
                    ),
                  ),
                ],
              ),
            ),
Card(
              elevation: 2.0, // Add slight shadow effect
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextButton(
                    onPressed: () =>
                     Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const Home()),
                    ),
                    child: Text('logout'),
                    style: TextButton.styleFrom(
                      //primary: Colors.blue,
                      padding: const EdgeInsets.all(15.0),
                   // ),
                //  ),
                 /// TextButton(
                  //onPressed: () => 
                    // Navigator.push(
                 // context,
                 // MaterialPageRoute(builder: (context) => const Home()),
                  //  ),
                  //  child: Text('Log out'),
                   // style: TextButton.styleFrom(
                   //   iconColor: Colors.blue,
                    //  padding: const EdgeInsets.all(15.0),
                    ),
                  ),
                ],
              ),
            ),
            //const SizedBox(height: 10.0), // Add spacing after buttons

            // You can add more sections for other functionalities

            //const SizedBox(height: 20.0), // Add spacing before bottom
            //TextButton(
              //onPressed: () => 
               //Navigator.push(
                  //context,
                  //MaterialPageRoute(builder: (context) => const Home()),
              //),
              //child: Text('Log Out'),
              //style: TextButton.styleFrom(
                //iconColor: Colors.red,
                //backgroundColor: Colors.transparent,
        ] ),
            ),
      // ],
    );
  }
}

      //),
    //);
  