class Tache {
  String description;
  static int nombreTotal = 0;
  Tache(this.description) {
    nombreTotal++;
  }
}

void main() {
  var t1 = Tache("tache 1");
  var t2 = Tache("tache 2");
  var t3 = Tache("tache 3");

  print("Nombre total de taches: ${Tache.nombreTotal}");
}
