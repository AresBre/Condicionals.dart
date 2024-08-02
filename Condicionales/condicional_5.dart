import 'dart:io';

void main() {
  stdout.write('Ingrese la Nota 1 (0 a 5): ');
  double? nota1 = _leerNota();
  
  stdout.write('Ingrese la Nota 2 (0 a 5): ');
  double? nota2 = _leerNota();
  
  stdout.write('Ingrese la Nota 3 (0 a 5): ');
  double? nota3 = _leerNota();
  
  stdout.write('Ingrese la Nota 4 (0 a 5): ');
  double? nota4 = _leerNota();
  
  stdout.write('Ingrese la Nota 5 (0 a 5): ');
  double? nota5 = _leerNota();
  
  if (nota1 == null || nota2 == null || nota3 == null || nota4 == null || nota5 == null) {
    print('Una o más notas ingresadas no son válidas.');
    return;
  }
  
  double promedio = (nota1 + nota2 + nota3 + nota4 + nota5) / 5;
  
  if (promedio >= 3.0) {
    print('Aprobó con un promedio de: $promedio');
  } else {
    print('No aprobó con un promedio de: $promedio');
  }
}

double? _leerNota() {
  String? input = stdin.readLineSync();
  
  if (input == null || input.isEmpty) {
    print('Entrada no válida.');
    return null;
  }
  
  double? nota = double.tryParse(input);
  
  if (nota == null || nota < 0 || nota > 5) {
    print('Nota no válida. Debe estar entre 0 y 5.');
    return null;
  }
  
  return nota;
}
