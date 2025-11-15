abstract class Connectable {
  void connecter(String utilisateur);
  void deconnecter();
}

class ServeurAPI implements Connectable {
  @override
  void connecter(String utilisateur) {
    print("serveurAPI : Connexion etablie pour $utilisateur.");
  }

  @override
  void deconnecter() {
    print("serveurAPI : deconnexion reussie.");
  }
}

class BaseDeDonnees implements Connectable {
  @override
  void connecter(String utilisateur) {
    print("basededonnees : Connexion etablie pour $utilisateur");
  }

  @override
  void deconnecter() {
    print("basededonnees : deconnexion reussie");
  }
}

void main() {
  var srv = ServeurAPI();
  var based_d = BaseDeDonnees();

  List<Connectable> services = [srv, based_d];

  for (var service in services) {
    service.connecter("zaki");
    service.deconnecter();
  }
}
