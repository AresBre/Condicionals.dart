import 'dart:io';

void main() {
  stdout.write('Ingrese el primer número: ');
  String? input1 = stdin.readLineSync();
  
  if (input1 == null || input1.isEmpty) {
    print('Entrada no válida. Asegúrese de ingresar un número.');
    return;
  }
  
  stdout.write('Ingrese el segundo número: ');
  String? input2 = stdin.readLineSync();
  
  if (input2 == null || input2.isEmpty) {
    print('Entrada no válida. Asegúrese de ingresar un número.');
    return;
  }

  int? num1 = int.tryParse(input1);
  int? num2 = int.tryParse(input2);
  
  if (num1 == null || num2 == null) {
    print('Entrada no válida. Asegúrese de ingresar números enteros.');
    return;
  }
  
  if (num1 == num2) {
    print('Los números son iguales: $num1');
  } else if (num1 > num2) {
    print('El número mayor es: $num1');
    print('El número menor es: $num2');
  } else {
    print('El número mayor es: $num2');
    print('El número menor es: $num1');
  }
}
