import 'package:flutter/material.dart';
import 'package:test_1/pages/login.dart';
import 'package:test_1/pages/register.dart';

void main() {
  runApp(const Home());
}

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        //primarySwatch: Color.fromARGB(255, 48, 115, 170),
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 105, 186, 252)),
        useMaterial3: true,
        scaffoldBackgroundColor: Color.fromARGB(255, 255, 255, 255), // Light blue background
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: Color.fromARGB(255, 49, 157, 246),
            foregroundColor: Color.fromARGB(255, 255, 255, 255), // White text for buttons
          ),
        ),
        inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: Color.fromARGB(255, 228, 240, 245), // Lighter blue fill for input fields
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide.none,
          ),
          labelStyle: const TextStyle(color: Color.fromARGB(255, 74, 171, 250)),
        ),
      ),
      home: const LoginPage(title: 'Login Page'),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({super.key, required this.title});

  final String title;

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  var showPassword = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Login',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Color.fromARGB(255, 60, 160, 242),
      ),
      body: SingleChildScrollView( // Allow scrolling for long forms
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 20),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Centered image
                  Image.asset(
                    'assets/images.png',
                    height: 200,
                    width: 300,
                  ),
                  const SizedBox(height: 20),
                  // Rest of the login form elements
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.0),
                    child: TextField(
                      decoration: InputDecoration(
                        labelText: 'Username',
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: TextField(
                      obscureText: showPassword,
                      decoration: InputDecoration(
                        labelText: 'Password',
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
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const login()),
                      );
                    },
                    child: const Text('Login'),
                  ),
                  const SizedBox(height: 10),
                  TextButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const Register()),
                      );
                    },
                    child: const Text('Create a new account'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
