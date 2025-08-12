enum NavSectionType {
  menu,
  reviews,
  aboutUs;

  String get label => switch (this) {
    NavSectionType.menu => 'Menu',
    NavSectionType.reviews => 'Reviews',
    NavSectionType.aboutUs => 'About us',
  };
}
