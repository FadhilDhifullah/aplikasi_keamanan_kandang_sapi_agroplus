import 'package:flutter/material.dart';
import 'home_screen.dart'; // Sesuaikan dengan lokasi file home_screen.dart

class NotificationScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Notifikasi'),
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => HomeScreen()),
            );
          },
        ),
      ),
      body: Center(
        child: Text('Belum ada notifikasi'),
      ),
    );
  }
}
