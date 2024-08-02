import 'dart:io';

void main() {
  stdout.write('Ingrese el valor: ');
  double? valor = _leerNumero();
  
  if (valor != null) {
    if (valor < 150000) {
      print('Seria $valor y tienes que pagar con efectivo');
    } else if (valor >= 150000 && valor <= 300000) {
      print('Seria $valor y tienes que pagar con dinero electrónico');
    } else if (valor > 300000 && valor <= 600000) {
      print('Seria $valor y tienes que pagar con tarjeta de crédito');
    } else {
      print('Valor fuera de rango');
    }
  } else {
    print('Valor no válido');
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
