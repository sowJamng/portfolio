import 'package:flutter/material.dart';
import 'package:portfolio/screens/home/HomeScreen.dart';

void main() {
  runApp(const MyPortfolioApp());
}

class MyPortfolioApp extends StatelessWidget {
  const MyPortfolioApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: HomeScreen(),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}