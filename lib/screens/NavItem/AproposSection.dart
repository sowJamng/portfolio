import 'package:flutter/material.dart';

class AproposSection extends StatelessWidget {
  const AproposSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Icon(Icons.event_available_outlined, color: Colors.white70),
            SizedBox(width: 29),
            Text(
              'Disponibilité : ',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Icon(Icons.money, color: Colors.white70),
            SizedBox(width: 30),
            Text(
              'TJM : XXX £',
              style: TextStyle(color: Colors.white70, fontSize: 16),
            ),
          ],
        ),
        SizedBox(height: 20),
        Row(
          children: [
            Icon(Icons.approval_outlined, color: Colors.white70),
            SizedBox(width: 30),
            Text(
              'Île-de-France',
              style: TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
      ],
    );
  }
}
