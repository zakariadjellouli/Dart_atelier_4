class Media {
  final String titre;

  Media(this.titre);

  void afficherType() {
    print("Ceci est un media generique");
  }
}

class Livre extends Media {
  final String auteur;

  Livre(String titre, this.auteur) : super(titre);

  @override
  void afficherType() {
    print("Ceci est un Livre : $titre par $auteur");
  }
}

class Film extends Media {
  final int dureeMinutes;

  Film(String titre, this.dureeMinutes) : super(titre);

  @override
  void afficherType() {
    print("Ceci est un Film : $titre, duree $dureeMinutes minute");
  }
}

void main() {
  List<Media> catalogue = [];

  catalogue.add(Livre("1984", "George Orwell"));
  catalogue.add(Livre("Le Petit Prince", "Antoine de Saint Exupery"));

  catalogue.add(Film("Inception", 148));
  catalogue.add(Film("Le Roi Lion", 88));

  for (var media in catalogue) {
    media.afficherType();
  }
}
