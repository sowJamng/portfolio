import 'package:flutter/material.dart';
import 'package:portfolio/core/widget/RowInfoWidget.dart';

class AproposSection extends StatelessWidget {
  const AproposSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        RowInfoWidget(value: 'Disponibilité : ', icon: Icons.event_available_outlined, isIconButton: false),
        RowInfoWidget(value:  'TJM : XXX £',icon: Icons.money, isIconButton: false),
        RowInfoWidget(value: 'Île-de-France', icon: Icons.approval_outlined, isIconButton: false),
      ],
    );
  }
}
