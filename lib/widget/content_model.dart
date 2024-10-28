class UnboardingContent {
  String image;
  String title;
  String description;
  UnboardingContent(
      {required this.description, required this.image, required this.title});
}

List<UnboardingContent> contents = [
  UnboardingContent(
      description:
          'Chosi ce que tu veux manger\n          Une multitude de choix s offre à vous !',
      image: "images/screen1.png",
      title: 'Selection de notre\n       Meilleur Catalogue'),
  UnboardingContent(
      description: 'Tu peux payer à la livraison\n     Ou maintenant !',
      image: "images/screen2.png",
      title: 'Paiement facile et sécuriser'),
  UnboardingContent(
      description: 'Fais toi livrer\n               Dès maintenant',
      image: "images/screen3.png",
      title: 'Livraison\n    A Domicile')
];
