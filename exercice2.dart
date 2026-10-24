import 'dart:io';

void main() {
  print('Entrez votre age :');

try{
  print('vous avez ${int.parse(stdin.readLineSync()!)} ans.');
} on FormatException {
  print('Format invalide:');
} finally {

}
}
