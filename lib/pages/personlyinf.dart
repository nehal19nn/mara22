import 'package:flutter/material.dart';


class personlyinf extends StatefulWidget {
  const personlyinf({super.key});

  @override
  State<personlyinf> createState() => _personlyinfState();
}

class _personlyinfState extends State<personlyinf> {


    @override
  Widget build(BuildContext context) {
 return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: Colors.blue,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center, // Center elements vertically
          children: [
            SizedBox(height: 50.0), // Add spacing

            // Profile picture section (optional)
            // You can replace with an image or icon
            CircleAvatar(
              radius: 50.0,
              backgroundColor: Color.fromARGB(255, 236, 240, 245), // Placeholder background
              child: Icon(
                Icons.account_circle,
                size: 50.0,
               color: Colors.blue, // Icon color matches app bar
              ),
           ),

            SizedBox(height: 20.0), // Add spacing

            // Name and other information section
            Text(
              'nehal ', // Replace with user name
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            
            
            ),

            
            Text(
              'Name:Nehal aljweeli', // Replace with user email or other info
              style: TextStyle(fontSize: 14.0, color: Colors.grey),
            ),

            SizedBox(height: 20.0), // Add spacing

            // Three additional text widgets
            Text(
              'Phone Number: (XXX) XXX-XXXX', // Replace with actual phone number
              style: TextStyle(fontSize: 14.0, color: Colors.grey),
            ),

             Text(
              'Email:nehal@example.com', // Replace with actual phone number
              style: TextStyle(fontSize: 14.0, color: Colors.grey),
            ),
            SizedBox(height: 20.0), // Add spacing before bottom
         ],
        ),
      ),
    );
  }
}