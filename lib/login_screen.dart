import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'get_started_screen.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          // Background atas
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 2,
            child: Container(
              color: Color(0xFF30E5D0),
            ),
          ),
          // Background bawah
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            height: MediaQuery.of(context).size.height / 2,
            child: Container(
              color: Color(0xFFE1FCF9),
            ),
          ),
          // Logo
          Positioned(
            top: MediaQuery.of(context).size.height / 5 - 50,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/images/logo.png',
                height: 240,
              ),
            ),
          ),
          // Tombol Back
          Positioned(
            top: 40,
            left: 20,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => GetStartedScreen()),
                );
              },
              child: Icon(
                Icons.arrow_back,
                color: Colors.black,
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                minimumSize: Size(40, 30),
                padding: EdgeInsets.zero, // Set padding to zero
              ),
            ),
          ),
          // Tombol Masuk
          Positioned(
            bottom: 250,
            left: 30,
            right: 30,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomeScreen()),
                );
              },
              child: Text(
                'Masuk',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF30E5D0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
                minimumSize: Size(270, 40),
              ),
            ),
          ),
          // Ilustrasi Peternak
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/peternak_login.png',
            ),
          ),
        ],
      ),
    );
  }
}
