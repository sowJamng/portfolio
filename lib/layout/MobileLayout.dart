import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MobileLayout extends StatelessWidget {
  const MobileLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 300,
          color: Colors.blue,
          child: Image.asset('images/profil.png', fit: BoxFit.cover),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const Text(
                'Maodo SOW',
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 16),
              const Text(
                'Flutter Developper',
                style: TextStyle(fontSize: 20, color: Colors.grey),
              ),
              const SizedBox(height: 16),
              const Text(
                'I am a passionate Flutter developer with experience in building responsive and scalable mobile applications.'
                'I am a passionate Flutter developer with experience in building responsive and scalable mobile applications.'
                'I am a passionate Flutter developer with experience in building responsive and scalable mobile applications.',
                style: TextStyle(fontSize: 16),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: const Icon(Icons.link),
                    onPressed: () => _launchUrl('https://fr.linkedin.com/in/maodo-laba-sow-668244184')
    
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
      ],
    );
  }

  // Méthode pour ouvrir l'URL
  Future<void> _launchUrl(String url) async {
    final Uri uri = Uri.parse(url);
    if (!await launchUrl(uri)) {
      throw 'Echec d\'ouverture du lien $url';
    }
  }
}
