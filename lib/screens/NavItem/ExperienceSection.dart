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
                      textWidget(experience.title, Colors.green, 18, FontWeight.bold),
                      textWidget(experience.dateRange,const Color.fromARGB(255, 117, 117, 117), 12,FontWeight.normal),
                       textWidget(
                          experience.company,
                          const Color.fromARGB(255, 117, 117, 117),
                          12,
                          FontWeight.bold),
                      textWidget(experience.techno,Colors.purple, 16,
                          FontWeight.bold),
                      textWidget(experience.description, Colors.white70, 16,FontWeight.normal),
                    ],
                  ),
                ),
              );
            },
          )
        ]);
  }

  Widget textWidget(String value, Color color, double fontSize, FontWeight fontWeight) {
    return Text(
      value,
      style: TextStyle(
          color: color, fontSize: fontSize, fontWeight: fontWeight),
    );
  }
}
