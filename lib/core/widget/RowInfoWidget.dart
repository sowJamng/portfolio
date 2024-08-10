import 'package:flutter/material.dart';

class RowInfoWidget extends StatelessWidget {
  final String value;
  final String? link;
  final IconData icon;
  final Function(String?)? onPressed;
  final bool isIconButton;
  const RowInfoWidget(
      {super.key,
      required this.value,
      required this.icon,
      required this.isIconButton,
      this.link,
      this.onPressed});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 20.0),
      child: Row(
        children: [
          Icon(icon, color: Colors.white70),
          const SizedBox(
            width: 30,
          ),
          isIconButton
              ? TextButton(
                child: Text(
                  value,
                      style: const TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold)
                ),
                  onPressed: () {
                    if (onPressed != null) {
                      onPressed!(link);
                    }
                  }, 
                )
              : Text(
                  value,
                  style: const TextStyle(
                      color: Colors.white70,
                      fontSize: 16,
                      fontWeight: FontWeight.bold),
                ),
        ],
      ),
    );
  }
}
