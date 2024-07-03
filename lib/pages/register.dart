import 'package:flutter/material.dart';
import 'package:test_1/pages/home.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  var showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Register',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SingleChildScrollView( // Allow scrolling for long forms
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 100.0), // Increased spacing before text
            const Center(
              child: Text(
                'Create your account',
                style: TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.blue,
                ),
              ),
            ),
            const SizedBox(height: 40.0), // Spacing after welcome message
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor:  Color.fromARGB(255, 228, 240, 245), // Light blue fill
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                labelText: 'Name',
                labelStyle: const TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Color.fromARGB(255, 228, 240, 245),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                labelText: 'Phone',
                labelStyle: const TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              decoration: InputDecoration(
                filled: true,
                fillColor:  Color.fromARGB(255, 228, 240, 245),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                labelText: 'Email address',
                labelStyle: const TextStyle(color: Colors.blue),
              ),
            ),
            const SizedBox(height: 10.0),
            TextFormField(
              obscureText: showPassword,
              decoration: InputDecoration(
                filled: true,
                fillColor:  Color.fromARGB(255, 228, 240, 245),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                labelText: 'Password',
                labelStyle: const TextStyle(color: Colors.blue),
                suffixIcon: IconButton(
                  icon: Icon(
                    showPassword ? Icons.visibility : Icons.visibility_off,
                    color: Colors.blue,
                  ),
                  onPressed: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
                padding: const EdgeInsets.symmetric(vertical: 10.0),
                minimumSize: const Size(double.infinity, 40.0), // Full width button
                textStyle: const TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const login()),
                );
              },
              child: const Text('Register'),
            ),
          ],
        ),
      ),
    );
  }
}
