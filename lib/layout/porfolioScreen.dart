import 'package:flutter/material.dart';
import 'package:portfolio/layout/DesktopLayout.dart';
import 'package:portfolio/layout/MobileLayout.dart';
class PortfolioScreen extends StatelessWidget {
  const PortfolioScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 800) {
          return const DesktopLayout();
        } else {
          return const MobileLayout();
        }
      },
    );
  }
}
