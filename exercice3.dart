void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw Exception('Le mot de passe doit contenir plus de 6 caracteres,');

  }
}

void main() {
  try {
    verifierMotdepasse('kly');
    print('Mot de passe valide.');
  } catch (e) {
      print('Erreur : $e');
  }
}
