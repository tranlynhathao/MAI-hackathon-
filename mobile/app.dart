import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Medical App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medical Records'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Welcome to Medical App',
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Navigate to medical records page
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => MedicalRecordsPage()),
                );
              },
              child: Text('View Medical Records'),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AppointmentPage()),
                );
              },
              child: Text('Book Appointment'),
            ),
          ],
        ),
      ),
    );
  }
}

class MedicalRecordsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Medical Records'),
      ),
      body: Center(
        child: Text(
          'Your Medical Records will be displayed here',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}

class AppointmentPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Book Appointment'),
      ),
      body: Center(
        child: Text(
          'Book Appointment functionality will be implemented here',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
