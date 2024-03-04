import 'package:flutter/material.dart';
import 'profile_page.dart'; // ProfilePage ko import karte hain

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Profile Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ProfilePage(), // ProfilePage ko home ke roop mein set karte hain
    );
  }
}