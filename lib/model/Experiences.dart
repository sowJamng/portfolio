import 'package:flutter/material.dart';

class Experience {
  final String title;
  final String company;
  final String dateRange;
 final String techno;
  final String description;

  Experience({
    required this.title,
    required this.company,
    required this.dateRange,
    required this.techno,
    required this.description,
  });
}
final List<Experience> experiencesList = [
    Experience(
      title: "Developpeur Full-Stack Java & Angular",
      company: "Ministère de l’éducation national de la jeunesse et des sports: Paris 75013",
      dateRange: "Mars 2023 - Présent:",
      techno: "Spring Boot/API Rest/ Angular/JUnit,OpenSearch/Jenkins/CSS/Design paterns/Entreprise Architecte/PostgreSQL/LiquiBase",
      description:
          "-Refont du site de formation BAFA-BAFD(https://bafa.ufcv.fr/).\n"
          "-Développement des web services , et spécifications fonctionnelles.\n"
          "-Développement de l’IHM, modèles de données.\n"
          "-Tests Unitaires et Intégration continue.\n"
          "-Migration de données avec des scripts SQL.",
    ),
    Experience(
      title: "Développeur Full-Stack",
      company: "ADP",
      dateRange: "Septembre 2022 - Mars 2023:",
       techno: "Java/Maven/JUnit/TestNG/Selenium/Jenkins/Jira/Dashboard/Git/GitLab/TestLink /SQL/XML/Appium,Oracle",
      description:
          "-Participer au process AGILE avec notre équipe et au travers de l'outil Jira\n"
"-Réaliser les spécifications fonctionnelles et techniques via des ateliers d'analyse avec les Clients.\n"
"-Réaliser des programmes et des IHM en utilisant quotidiennement les technologies JAVA, Javascript et SQL Oracle\n"
"-Respect des normes de développement de l'équipe : charte graphique, sécurité, process de mise au produit\n"
"-Tests d'intégration, documentations.\n"
"-Migration de données avec des scripts SQL\n"
"-Mettre à jour des tables au niveau de base de données Oracle , traitements de données avec des requêtes SQL",
    ),
    Experience(
      title: "Ingénieur Testeur(Automatisation) QA",
      company: "Oscaro",
      dateRange: "Janvier 2020 - Présent",
       techno: "Java/Maven/JUnit/TestNG/Selenium/Jenkins/Jira/Git/GitLab/TestLink/SQL/XML/Appium,Oracle",
      description:
          "Définir les scénarios de tests et les cahiers de recette correspondants aux features et aux épics en cours de conception ou de développement\n"
"-Réaliser les tests des nouvelles fonctionnalités \n"
"-En Collaboration avec le Manager,assurer la validation des développements\n"
"-Qualifier et spécifier les bugs rencontrés, avec des exemples, les steps.\n"
"-Prioriser et suivre les corrections des incidents rencontrés sur les environnements.\n"
"-Maintenir et optimiser le Framework de test\n"
"-Participer à la mise en place d’une solution d’automatisation des tests de non régression",
    ),
    Experience(
      title: " Developpeur Full-Stack ",
      company: "Hyre Agency",
      dateRange: "Août 2021 - Août 2022:",
       techno: "Spring Boot/React/JUnit/MongoDB/SonnarCloud/Docker/Material-ui/CSS/Json/Git/ GitHub/Maven/PlantUML",
      description:
          "Développement des web services.\n"
"-Intégration continue.\n"
"-Maintenance et évolution de l’application web\n"
"-Tests unitaires avec JUnit\n"
"-Développement de L’IHM",
    ),
    Experience(
      title: "Développeur Flutter",
      company: "FST",
      dateRange: "Septembre 2020 - Mars 2021:",
       techno: "Flutter ,Spring Boot, JUnit, SonnarCloud, Node JS ,Angular,CSS ,Design paterns,Dart,Java,Oracle",
      description: "Développement des web services.\n"
          "-Intégration continue.\n"
          "-Maintenance et évolution de l’application web\n"
          "-Tests unitaires avec JUnit\n"
          "-Développement de L’IHM",
    ),
  ];
