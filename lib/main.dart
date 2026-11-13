import 'package:flutter/material.dart';
import 'package:software_architecture/controllers/control_navigationbar.dart';
import 'package:software_architecture/screens/activity_screen.dart';
import 'package:software_architecture/screens/home_screen.dart';
import 'package:software_architecture/screens/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home:  const ControlNavigationbar(),
      routes: {
        '/HomeScreen': (context) => const  HomeScreen(),
        '/ActivityScreen': (context) => const ActivityScreen(),
        '/ProfileScreen': (context) => const ProfileScreen(),
      },
    );
  }
}
