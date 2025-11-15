class Livre {
  String titre;
  String auteur;
  int _pages = 200;
  static int totalLivres = 0;

  Livre(this.titre, this.auteur) {
    totalLivres++;
  }
  int get pages => _pages;
  void afficherInfos() {
    print("titre: $titre, auteur: $auteur, pages: $pages");
  }

  static void afficherTotal() {
    print("total de livres crees : $totalLivres");
  }
}

void main() {
  Livre li1 = Livre(
    "Stratégies de planification utilisant des fiducies",
    " Caroline Rhéaume",
  );
  Livre li2 = Livre("48 Laws of Power", "Robert Greene");

  li1.afficherInfos();
  li2.afficherInfos();
}
