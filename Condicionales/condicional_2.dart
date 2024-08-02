import 'dart:io';

void main() {
  stdout.write('Escriba su Nombre: ');
  String? nombre = stdin.readLineSync();

  stdout.write('Escriba su Edad: ');
  String? edadInput = stdin.readLineSync();

  if (nombre == null || nombre.isEmpty) {
    print('El nombre no puede estar vacío.');
    return;
  }

  if (edadInput == null || edadInput.isEmpty) {
    print('La edad no puede estar vacía.');
    return;
  }

  int? edad = int.tryParse(edadInput);

  if (edad == null) {
    print('Entrada de edad no válida. Asegúrese de ingresar un número entero.');
    return;
  }

  if (edad < 0 || edad > 100) {
    print('Edad ingresada inválida');
  } else if (edad >= 18) {
    print('Señor $nombre tiene $edad años, por lo cual es mayor de edad');
  } else {
    print('Niño $nombre tiene $edad años, por lo cual es menor de edad');
  }
}
