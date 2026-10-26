class MotdepassecourtException implements Exception {
  String message;
  MotdepassecourtException(this.message);

  @override
  String toString() => message;
}
void verifierMotdepasse(String mp) {
  if (mp.length < 6) {
    throw MotdepassecourtException('Le mot de passe doit avoir plus de 6 caracteres');

  }
}
void main() {
  try {
    verifierMotdepasse('Maman');
    print('Mot de passe valide.');
    } on MotdepassecourtException catch (e) {
     print(e);
     }
    }