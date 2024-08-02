import 'dart:io';

void main() {
  stdout.write('Escriba un número: ');
  
  String? input = stdin.readLineSync();
  
  if (input == null) {
    print('No se ingresó ningún número.');
    return;
  }
  
  int? num = int.tryParse(input);
  
  if (num == null) {
    print('Entrada no válida. Asegúrese de ingresar un número entero.');
    return;
  }
  
  if (num == 0) {
    print('El número es cero');
  } else if (num % 2 == 0) {
    print('El número $num es par');
  } else {
    print('El número $num es impar');
  }
}
