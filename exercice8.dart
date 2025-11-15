class Livre {
  String titre;
  String auteur;

  Livre(this.titre, this.auteur);
  void afficherInfos() {
    print("titre: $titre, auteur: $auteur");
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
