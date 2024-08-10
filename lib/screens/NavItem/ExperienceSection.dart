import 'package:flutter/material.dart';
import 'package:portfolio/model/Experiences.dart';
import 'package:url_launcher/url_launcher.dart';

class ExperienceSection extends StatelessWidget {
  List<Experience> experiences = experiencesList;

  ExperienceSection({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          ListView.builder(
            shrinkWrap: true,
            itemCount: experiences.length,
            physics: const NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              final experience = experiences[index];
              return Card(
                color: const Color.fromRGBO(15, 11, 43, 1),
                margin: const EdgeInsets.all(8),
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        experience.title,
                        style: const TextStyle(
                            color: Colors.green,
                            fontSize: 18,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        experience.dateRange,
                        style: const TextStyle(
                          color: Color.fromARGB(255, 117, 117, 117),
                        ),
                      ),
                      Text(
                        experience.company,
                        style: const TextStyle(
                          color: Colors.purple,
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        experience.techno,
                        style: const TextStyle(
                          color: Colors.greenAccent,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        experience.description,
                        style: const TextStyle(
                            color: Colors.white70, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              );
            },
          )
        ]);
  }
}
