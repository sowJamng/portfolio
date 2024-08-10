enum NavigationItemEnum {
  Accueil,
  Experiences,
  Contact,
  A_Propos
}

extension NavigationItemEnumExtension on NavigationItemEnum {
  String get label {
    switch (this) {
      case NavigationItemEnum.Accueil:
        return 'Accueil';
      case NavigationItemEnum.Experiences:
        return 'Experiences';
      case NavigationItemEnum.Contact:
        return 'Contact';
      case NavigationItemEnum.A_Propos:
        return 'A Propos';
      default:
        return '';
    }
  }
}