import 'dart:io';

class NombreNegatifException implements Exception {
  String message;
  NombreNegatifException(this.message);
  
  @override
  String tostring() => message;
}
void main() {
print("Veuillez entrez un nombre :,");

  try {
   double nombre =double.parse(stdin.readLineSync()!);
  
  if(nombre < 0) {
    throw NombreNegatifException('Le nombre sera toujours positif superieur a zero.');
    }

    print("carre = ${nombre * nombre}");
  } on FormatException {
    print("entrer un nombre valide.");
  } on NombreNegatifException catch (e) {
      print(e);
  } finally {
      print("Operation terminee");
  }
}