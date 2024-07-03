import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class history extends StatefulWidget {
  const history({super.key});

  @override
  State<history> createState() => _historyState();
}

class _historyState extends State<history> {
  
bool _isButtonPressed = false;
  @override
  Widget build(BuildContext context) {
   return Scaffold(
     
      body: Center(
        child: Column(
          children: [
           
           Container(
  padding: const EdgeInsets.all(10.0),
  decoration: BoxDecoration(
    border: Border.all(color: Colors.grey),
    borderRadius: BorderRadius.circular(10.0),
  ),
  child: Column(
    children: [
      const Text('Appointment Information:', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold)),
      const SizedBox(height: 5.0),
      const Text('date: 18/2/2024'),
      const Text('age: 18'),
      const Text('dentist name: Ahmed'),
      const Text('appointment type: check up'),
      const SizedBox(height: 10.0),
                  ElevatedButton.icon(
                    onPressed: () {
                      setState(() {
                        _isButtonPressed = !_isButtonPressed; 
                      });
                    },
                    icon: const Icon(Icons.arrow_right),
                    label: Text(
                      _isButtonPressed ? 'Confirmed' : 'Waiting',
                      style: const TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: _isButtonPressed ? Colors.green : const Color.fromARGB(255, 243, 33, 33),
  ),
),

           ] ),
            ),
          ],
        ),
      ),
    );
  }
}
