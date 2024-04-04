import 'package:flutter/material.dart';
import 'notification_screen.dart'; // Adjust according to the location of notification_screen.dart
import 'profile_screen.dart'; // Adjust according to the location of profile_screen.dart
import 'alarm_settings_screen.dart'; // Adjust according to the location of alarm_settings_screen.dart
import 'alarm_history_screen.dart'; // Adjust according to the location of alarm_history_screen.dart

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Top section: Notification bell and Profile button
          _buildTopButtons(),

          // Central logo
          Positioned(
            top: 66,
            left: 0,
            right: 0,
            child: Image.asset(
              'assets/images/logo.png',
              width: 200,
              height: 200,
            ),
          ),

          // Bottom section: Alarm settings and Alarm history buttons
          _buildCenterButtons(),
        ],
      ),
    );
  }

  // Widget for top section: Notification bell and Profile button
  Widget _buildTopButtons() {
    return Positioned(
      top: 40,
      right: 20,
      child: Row(
        children: [
          _buildNotificationButton(),
          SizedBox(width: 10),
          _buildProfileButton(),
        ],
      ),
    );
  }

  // Notification bell button
  Widget _buildNotificationButton() {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 40, maxHeight: 40),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => NotificationScreen()),
          );
        },
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.zero,
          elevation: 5,
          backgroundColor: Colors.white,
        ),
        child: Icon(
          Icons.notifications,
          color: Color(0xFFF2C94C),
        ),
      ),
    );
  }

  // Profile button
  Widget _buildProfileButton() {
    return ConstrainedBox(
      constraints: BoxConstraints(maxWidth: 40, maxHeight: 40),
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(builder: (context) => ProfileScreen()),
          );
        },
        style: ElevatedButton.styleFrom(
          shape: CircleBorder(),
          padding: EdgeInsets.zero,
          elevation: 5,
          backgroundColor: Colors.white,
        ),
        child: Icon(Icons.person),
      ),
    );
  }

  // Widget for bottom section: Alarm settings and Alarm history buttons
  Widget _buildCenterButtons() {
    return Positioned(
      bottom: 140,
      left: 0,
      right: 0,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildAlarmSettingsButton(),
          SizedBox(height: 20),
          _buildAlarmHistoryButton(),
        ],
      ),
    );
  }

  // Alarm settings button
  Widget _buildAlarmSettingsButton() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => AlarmSettingsScreen()),
        );
      },
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Image.asset(
                'assets/images/to_alarm_settings_screen.png',
                width: 343,
                height: 168,
              ),
              Positioned(
                left: 10,
                top: 12,
                child: Container(
                  width: 97,
                  height: 28,
                  decoration: BoxDecoration(
                    color: Color(0xFFF2C94C),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      'Alarm',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  // Alarm history button
  Widget _buildAlarmHistoryButton() {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => AlarmHistoryScreen()),
        );
      },
      child: Column(
        children: [
          Stack(
            alignment: Alignment.topLeft,
            children: [
              Image.asset(
                'assets/images/to_alarm_history_screen.png',
                width: 341,
                height: 140,
              ),
              Positioned(
                left: 15,
                top: 0,
                child: Container(
                  width: 120,
                  height: 28,
                  decoration: BoxDecoration(
                    color: Color(0xFFF2C94C),
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Center(
                    child: Text(
                      'Riwayat Alarm',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontFamily: 'Poppins',
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
