import 'package:flutter/material.dart';

class NavigationItem extends StatelessWidget {
  final String title;
  final bool isActive;
  final VoidCallback onTap;
  const NavigationItem(
      {super.key, required this.title, required this.isActive, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Text(
          title,
          style: TextStyle(
            color: isActive ? Colors.pinkAccent : Colors.white70,
            fontSize: 16,
            fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ),
    );
  }
}