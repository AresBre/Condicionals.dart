import 'dart:io';

void main() {
  stdout.write('Escriba un número: ');
  String? input = stdin.readLineSync();
  
  if (input == null || input.isEmpty) {
    print('Entrada no válida. Asegúrese de ingresar un número.');
    return;
  }
  
  int? num = int.tryParse(input);
  
  if (num == null) {
    print('Entrada no válida. Asegúrese de ingresar un número entero.');
    return;
  }
  
  if (num > 0) {
    print('El número $num es positivo');
  } else if (num == 0) {
    print('El número es cero');
  } else {
    print('El número es negativo');
  }
}
