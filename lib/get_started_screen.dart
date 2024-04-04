import 'package:flutter/material.dart';
import 'login_screen.dart';

class GetStartedScreen extends StatefulWidget {
  @override
  _GetStartedScreenState createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFE1FCF9),
      body: Stack(
        children: <Widget>[
          // Background image with half screen height and positioned on top
          Positioned.fill(
            child: Image.asset(
              'assets/images/peternakan_get_started.png',
              fit: BoxFit.cover,
            ),
          ),

          Positioned(
            top: 50,
            left: 0,
            right: 0,
            child: Center(
              child: Image.asset(
                'assets/images/logo.png',
                height: MediaQuery.of(context).size.height / 4,
                // Adjust width to maintain aspect ratio
              ),
            ),
          ),

          // Text elements positioned in the center
          Positioned(
            top: 250,
            left: 40,
            right: 40,
            child: Column(
              mainAxisSize: MainAxisSize.min, // Center vertically
              children: [
                // Welcome text
                Text(
                  'Selamat datang di AgroPlus!',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Poppins',
                  ),
                ),
                SizedBox(height: 10.0), // Add spacing between texts
                // Description text
                Text(
                  'Aplikasi untuk memonitoring hewan ternak agar aman',
                  textAlign: TextAlign.center,
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                  ),
                ),
              ],
            ),
          ),

          // Tombol Get Started (diubah)
          Positioned(
            bottom: 70,
            left: 30,
            right: 30,
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => LoginScreen()),
                );
              },
              child: Text(
                'Mulai',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.w600,
                  fontFamily: 'Poppins',
                ),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xFF30E5D0), // Set background color
                foregroundColor: Colors.white, // Set text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
