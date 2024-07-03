import 'package:flutter/material.dart';

class Appointment extends StatefulWidget {
  const Appointment({super.key});

  @override
  State<Appointment> createState() => _AppointmentState();
}

class _AppointmentState extends State<Appointment> {
  // Sample data for dropdown menus (replace with your actual data source)
  final List<String> dentists = ['Dr. Ahmed', 'Dr. Alaa', 'Dr.Fatimah'];
  final List<String> reservationTypes = ['Reservation', 'Check Up']; // Corrected name

  String selectedDentist = 'Dr. Ahmed';
  String selectedReservationType = 'Check Up';

  DateTime selectedDate = DateTime.now(); // Initial selected date

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2023, 1, 1), // Set minimum selectable date (optional)
      lastDate: DateTime(2025, 12, 31), // Set maximum selectable date (optional)
    );
    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Appointment Booking'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Centered image with padding
                  Padding(
                    padding: EdgeInsets.only(left: 10.0, right: 10.0, bottom: 2.0), // Adjust padding as needed
                    child: Image.asset(
                      'assets/dentist.png',
                      height: 200,
                      width: 300,
                    ),
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      labelText: 'Age',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  // Date picker button
                  TextButton(
                    onPressed: () => _selectDate(context),
                    child: Row(
                      children: [
                        Text(
                          'Selected Date: ${selectedDate.toIso8601String().split('T')[0]}', // Display only date part
                          style: TextStyle(color: Colors.grey),
                        ),
                        const Icon(Icons.calendar_today_outlined),
                      ],
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  DropdownButtonFormField(
                    value: selectedDentist,
                    items: dentists.map((dentist) => DropdownMenuItem(
                      value: dentist,
                      child: Text(dentist),
                    )).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedDentist = value as String;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'Doctor',
                       
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 10.0),
                  DropdownButtonFormField(
                    value: selectedReservationType,
                    items: reservationTypes.map((reservationType) => DropdownMenuItem(
                      value: reservationType, // Use the actual reservation type here
                      child: Text(reservationType), // Display the reservation type here
                    )).toList(),
                    onChanged: (value) {
                      setState(() {
                        selectedReservationType = value as String;
                      });
                    },
                    decoration: InputDecoration(
                      labelText: 'Appointment Type', // Consider a clearer label
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  const SizedBox(height: 15.0),
                  ElevatedButton(
                    onPressed: () {
                      // Handle button press (e.g., submit appointment request)
                      // You can access selectedDentist and selectedReservationType here
                      print(
                          'Appointment requested for Dr. $selectedDentist - $selectedReservationType');
                    },
                    child: Text(
                      'Book Appointment',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 10.0),
                      minimumSize: const Size(double.infinity, 40.0), // Full width button
                      ),)
  
           ] )
            )
        ])
      )
    );
  }
}
