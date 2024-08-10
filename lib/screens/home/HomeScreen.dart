import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart' show rootBundle;
import 'package:flutter/widgets.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:portfolio/core/enums/NavigationItemEnum.dart';
import 'package:portfolio/model/Contact.dart';
import 'package:portfolio/screens/NavItem/AproposSection.dart';
import 'package:portfolio/screens/NavItem/ContactSectionScreen.dart';
import 'package:portfolio/screens/NavItem/ExperienceSection.dart';
import 'package:portfolio/screens/NavItem/NavIgationItem.dart';
import 'dart:typed_data';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  NavigationItemEnum _selectedItem = NavigationItemEnum.Accueil;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color(0xFF0B132B),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    addTextWidget('Port', Colors.white, 24),
                    addTextWidget('folio', Colors.pinkAccent, 24),
                    const Spacer(),
                    addItemNavHeader(NavigationItemEnum.Accueil),
                    addItemNavHeader(NavigationItemEnum.Experiences),
                    addItemNavHeader(NavigationItemEnum.Contact),
                    addItemNavHeader(NavigationItemEnum.A_Propos),
                  ],
                )),
            if (_selectedItem == NavigationItemEnum.Experiences)
              addProfilImage(screenWidth),
            addTextWidget(
                'Développeur', Colors.white, screenWidth < 600.0 ? 30 : 40),
            RichText(
              text: TextSpan(
                text: 'Flutter & Java & Angular',
                style: TextStyle(
                  color: Colors.pinkAccent,
                  fontSize: screenWidth < 600.0 ? 30 : 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 50),
            Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.only(left: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          text: getTitle(),
                          style: TextStyle(
                            color: Colors.pinkAccent,
                            fontSize: screenWidth < 600.0 ? 20 : 30,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      buildContentByItem(),
                      const SizedBox(height: 20),
                      ElevatedButton(
                          onPressed: () => _downloadAndSavePDF(),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.transparent,
                            side: const BorderSide(color: Colors.pinkAccent),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 25, vertical: 15),
                          ),
                          child: addTextWidget(
                              'Télécharge mon CV', Colors.pinkAccent, 18)),
                    ],
                  ),
                )),
                if (_selectedItem != NavigationItemEnum.Experiences)
                  Expanded(child: addProfilImage(screenWidth)),
              ],
            ),
          ],
        ),
      ),
    );
  }

  Widget addItemNavHeader(NavigationItemEnum navigationItemEnum) {
    return Flexible(
      child: NavigationItem(
          title: navigationItemEnum.label,
          isActive: _selectedItem == navigationItemEnum,
          onTap: () => setActiveItem(navigationItemEnum)),
    );
  }

  addTextWidget(String value, Color color, double fontSize) {
    return Text(
      value,
      style: TextStyle(
        color: color,
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  addProfilImage(double screenWidth) {
    return Center(
      child: CircleAvatar(
        radius: screenWidth < 600 ? 100 : 150,
        backgroundImage: const AssetImage('images/profil.png'),
      ),
    );
  }

  String getTitle() {
    switch (_selectedItem) {
      case NavigationItemEnum.Accueil:
        return 'Présentation';
      case NavigationItemEnum.Contact:
        return 'Contactez-moi';
      case NavigationItemEnum.Experiences:
        return 'Expériences';
      case NavigationItemEnum.A_Propos:
        return 'A propos';
      default:
        return 'Présentation';
    }
  }

  Widget buildContentByItem() {
    switch (_selectedItem) {
      case NavigationItemEnum.Accueil:
        return const Text(
          'Lorem ipsum dolor sit amet consectetur adipisicing elit. '
          'Amet ipsum blanditiis magnam! Quisque tempus turpis non felis convallis mattis.'
          'Donec finibus ex id risus convallis malesuada. Sed maximus eget velit non porttitor. '
          'Sed lobortis ex quis dolor suscipit lobortis ultrices sed nisl. In sollicitudin magna ut',
          style: TextStyle(
            color: Colors.white54,
            fontSize: 16,
          ),
        );
      case NavigationItemEnum.Contact:
        Contact contact = Contact(
            nom: 'SOW',
            prenom: 'Maodo',
            adresse: 'Paris',
            telephone: '+33 6 27 XX XX XX',
            email: 'maodosowdev7@gmail.com',
            linkedinLink: 'https://fr.linkedin.com/in/maodo-laba-sow-668244184',
            githubLink: 'https://github.com/sowJamng');
        return ContactSection(contact: contact);
      case NavigationItemEnum.Experiences:
        return ExperienceSection();
      case NavigationItemEnum.A_Propos:
        return const AproposSection();
      default:
        return const Center(
          child: Text(
            'Bienvenue sur mon Portfolio',
            style: TextStyle(color: Colors.white, fontSize: 24),
          ),
        );
    }
  }

  void setActiveItem(NavigationItemEnum activeItem) {
    {
      setState(() {
        _selectedItem = activeItem;
      });
    }
  }

  Future<void> _downloadAndSavePDF() async {
    const String pdfAssetPath = 'assets/pdfs/cv.pdf';
    if (await Permission.storage.request().isGranted) {
      try {
        final ByteData data = await rootBundle.load(pdfAssetPath);
        final buffer = data.buffer.asUint8List();

        final tempDir = await getExternalStorageDirectory();
        final file = File('${tempDir!.path}/cv.pdf');

        await file.writeAsBytes(buffer);

        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('Téléchargement terminé : ${file.path}')),
        );
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('Erreur lors du téléchargement')),
        );
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Permission de stockage requise')),
      );
    }
  }
}
