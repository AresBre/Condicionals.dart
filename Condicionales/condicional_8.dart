import 'dart:io';

void main() {
  stdout.write('Ingrese el primer número: ');
  double? num1 = _leerNumero();
  
  stdout.write('Ingrese el segundo número: ');
  double? num2 = _leerNumero();
  
  stdout.write('Ingrese el tercer número: ');
  double? num3 = _leerNumero();
  
  if (num1 != null && num2 != null && num3 != null) {
    // Ordenar los números
    List<double> numeros = [num1, num2, num3];
    numeros.sort();
    
    double min = numeros[0];
    double medio = numeros[1];
    double max = numeros[2];
    
    print('Orden ascendente: $min, $medio, $max');
    print('Orden descendente: $max, $medio, $min');
  } else {
    print('Uno o más números no son válidos.');
  }
}

double? _leerNumero() {
  String? input = stdin.readLineSync();
  
  if (input == null || input.isEmpty) {
    print('Entrada no válida.');
    return null;
  }
  
  double? numero = double.tryParse(input);
  
  if (numero == null) {
    print('Entrada no válida. Asegúrese de ingresar un número.');
    return null;
  }
  
  return numero;
}
