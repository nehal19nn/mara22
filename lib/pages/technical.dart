import 'package:flutter/material.dart';


class technical extends StatefulWidget {
  const technical({super.key});

  @override
  State<technical> createState() => _technicalState();
}

class _technicalState extends State<technical> {
  
  @override
  Widget build(BuildContext context) {
return Scaffold(
      appBar: AppBar(
        title: const Text('Technical Support'), // Set a title
        backgroundColor: Colors.blue, // Apply blue color to AppBar
      ),
      body: SingleChildScrollView( // Allow scrolling if content overflows
        child: Center(
          // Center the content within the available space
          child: Padding(
            padding: const EdgeInsets.all(30.0), // Add padding around the container
            child: Column(
              children: [
                // Image container with border
                Container(
                  width: MediaQuery.of(context).size.width, // Use full screen width
                  height: 200.0, // Adjust height as needed
                  decoration: BoxDecoration(
                  shape: BoxShape.rectangle, // Rectangular container (optional)
                    border: Border.all(
                      color: Colors.blue,
                      width: 2.0, // Adjust border width as needed
                    ),
                  ),
                  child: Center( // Center the image within the container
                    child: Image.asset(
                      'assets/images.png', // Replace with your image path
                      fit: BoxFit.cover, // Cover the container area
                    ),
                  ),
                ),
                const SizedBox(height: 50), // Add spacing after image

                // Text content with improved formatting
                RichText(
                  textAlign: TextAlign.center, // Center text horizontally
                  text: TextSpan(
                    children: [
                      const TextSpan(
                        text: 'If you encounter any problems, ',
                        style: TextStyle(fontSize: 16.0, color: Colors.black),
                      ),
                      TextSpan(
                        text: 'call our technical support team at: ',
                        style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      TextSpan(
                        text: '(XXX) XXX-XXXX', // Replace with sample format
                        style: TextStyle(fontSize: 16.0, color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}