import 'package:flutter/material.dart';
import 'package:portfolio/core/widget/RowInfoWidget.dart';
import 'package:portfolio/model/Contact.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactSection extends StatelessWidget {
  final Contact contact;
  const ContactSection({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '${contact.prenom}  ${contact.nom}',
          style: const TextStyle(
              color: Colors.white70, fontSize: 18, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 20,
        ),
        RowInfoWidget(value: contact.telephone, icon: Icons.phone, isIconButton: false),
        RowInfoWidget(value: contact.email, icon: Icons.email, isIconButton: false),
        RowInfoWidget(value: contact.adresse, icon: Icons.location_city,isIconButton: false),
        RowInfoWidget(
            value: 'GitHub',
            link: contact.githubLink,
            icon: Icons.code_outlined,
            isIconButton: true,
            onPressed: (String? url) {
              if (url != null) {
                _launchURL(url);
              }
            }),
        RowInfoWidget(
            value: 'LinkedIn',
            link: contact.linkedinLink,
            icon: Icons.link,
            isIconButton: true,
            onPressed: (String? url) {
              if (url != null) {
                _launchURL(url);
              }
            }),
      ],
    );
  }

  dynamic _launchURL(String url) async {
    final Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Echec $url';
    }
  }
}
