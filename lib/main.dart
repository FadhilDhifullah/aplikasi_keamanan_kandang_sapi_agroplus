import 'package:flutter/material.dart';
import 'start_screen.dart'; // Import StartScreen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Agroplus',
      
      initialRoute: '/start', 
      routes: {
        '/start': (context) => StartScreen(),
      },
    );
  }
}
