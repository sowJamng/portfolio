import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
            child: Image.asset('images/profil.png', fit: BoxFit.cover),
          ),
        ),
        Expanded(
          flex: 3,
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Maodo SOW',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 16),
                const Text(
                  'Flutter Developer',
                  style: TextStyle(fontSize: 24, color: Colors.grey),
                ),
                const SizedBox(height: 16),
                const Text(
                  'I am a passionate Flutter developer with experience in building responsive and scalable mobile applications.'
                  'I am a passionate Flutter developer with experience in building responsive and scalable mobile applications.'
                  'I am a passionate Flutter developer with experience in building responsive and scalable mobile applications.'
                  'I am a passionate Flutter developer with experience in building responsive and scalable mobile applications.',
                  style: TextStyle(fontSize: 18),
                ),
                const SizedBox(height: 32),
                Row(
                  children: [
                    IconButton(
                      icon: const Icon(Icons.link),
                      onPressed:  () => _launchUrl(
                            'https://fr.linkedin.com/in/maodo-laba-sow-668244184')
                    ),
                    IconButton(
                      icon: const Icon(Icons.code),
                      onPressed: () => _launchUrl('https://github.com/sowJamng')
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
  // Desktop pour ouvrir l'URL
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Echec d\'ouverture du lien $url';
    }
  }
}
