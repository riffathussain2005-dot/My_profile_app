import 'package:flutter/material.dart';
import 'package:profile_app/screen/about_screen.dart';
import 'package:profile_app/screen/profile_screen.dart';
import 'package:profile_app/screen/welcome_screen.dart';
import 'screens/welcome_screen.dart';
import 'screens/profile_screen.dart';
import 'screens/about_screen.dart';
import 'models/user.dart';

void main() {
  runApp(const MyProfileApp());
}

class MyProfileApp extends StatelessWidget {
  const MyProfileApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Profile App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.white,
      ),
      home: const WelcomeScreen(),
      routes: {
        '/profile': (context) => const ProfileScreen(),
        '/about': (context) => const AboutScreen(),
      },
    );
  }
}

