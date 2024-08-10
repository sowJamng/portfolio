import 'package:flutter/material.dart';
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
        const SizedBox(height: 25),
        Row(
          children: [
            const Icon(Icons.phone, color: Colors.white70),
            const SizedBox(width: 29),
            Text(
              contact.telephone,
              style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            const Icon(Icons.email, color: Colors.white70),
            const SizedBox(width: 30),
            Text(
              contact.email,
              style: const TextStyle(color: Colors.white70, fontSize: 16),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            const Icon(Icons.location_city, color: Colors.white70),
            const SizedBox(width: 30),
            Text(
              contact.adresse,
              style: const TextStyle(
                  color: Colors.white70,
                  fontSize: 16,
                  fontWeight: FontWeight.bold),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            IconButton(
              icon: const Icon(Icons.code_outlined, color: Colors.white70),
              onPressed: () => _launchURL(contact.githubLink),
              tooltip: 'GitHub',
            ),
            const SizedBox(width: 20),
            IconButton(
              icon: const Icon(Icons.link, color: Colors.white70),
              onPressed: () => _launchURL(contact.linkedinLink),
              tooltip: 'LinkedIn',
            ),
          ],
        ),
      ],
    );
  }

  void _launchURL(String url) async {
    final Uri uri = Uri.parse(url);

    if (await canLaunchUrl(uri)) {
      await launchUrl(uri);
    } else {
      throw 'Echec $url';
    }
  }
}
