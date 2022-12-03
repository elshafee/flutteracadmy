import 'package:flutter/material.dart';
import 'package:flutter_academy/intro_screens/splash_screen.dart';
import 'package:flutter_academy/main_screen/home_screen.dart';
import 'package:flutter_academy/profileui/profile_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Academy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => const HomeScreen(),
        '/profile': (context) => const Profile(),
      },
      home: const Splash(),
    );
  }
}
