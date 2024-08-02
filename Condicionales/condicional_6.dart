import 'dart:io';

void main() {
  stdout.write('Seleccione la figura geométrica (triangulo, cuadrado, rectangulo, rombo, trapecio, triangulo_equilatero, triangulo_rectangulo, poligono_regular): ');
  String? figura = stdin.readLineSync();
  
  switch (figura) {
    case 'triangulo':
      _calcularAreaTriangulo();
      break;
    case 'cuadrado':
      _calcularAreaCuadrado();
      break;
    case 'rectangulo':
      _calcularAreaRectangulo();
      break;
    case 'rombo':
      _calcularAreaRombo();
      break;
    case 'trapecio':
      _calcularAreaTrapecio();
      break;
    case 'triangulo_equilatero':
      _calcularAreaTrianguloEquilatero();
      break;
    case 'triangulo_rectangulo':
      _calcularAreaTrianguloRectangulo();
      break;
    case 'poligono_regular':
      _calcularAreaPoligonoRegular();
      break;
    default:
      print('Figura no válida.');
  }
}

void _calcularAreaTriangulo() {
  stdout.write('Ingrese la base del triángulo: ');
  double? base = _leerNumero();
  
  stdout.write('Ingrese la altura del triángulo: ');
  double? altura = _leerNumero();
  
  if (base != null && altura != null) {
    double area = (base * altura) / 2;
    print('El área del triángulo es: $area');
  }
}

void _calcularAreaCuadrado() {
  stdout.write('Ingrese el lado del cuadrado: ');
  double? lado = _leerNumero();
  
  if (lado != null) {
    double area = lado * lado;
    print('El área del cuadrado es: $area');
  }
}

void _calcularAreaRectangulo() {
  stdout.write('Ingrese la base del rectángulo: ');
  double? base = _leerNumero();
  
  stdout.write('Ingrese la altura del rectángulo: ');
  double? altura = _leerNumero();
  
  if (base != null && altura != null) {
    double area = base * altura;
    print('El área del rectángulo es: $area');
  }
}

void _calcularAreaRombo() {
  stdout.write('Ingrese el lado A: ');
  double? a = _leerNumero();
  
  stdout.write('Ingrese el lado B: ');
  double? b = _leerNumero();
  
  stdout.write('Ingrese el lado C: ');
  double? c = _leerNumero();
  
  stdout.write('Ingrese el lado D: ');
  double? d = _leerNumero();
  
  if (a != null && b != null && c != null && d != null) {
    double area = (a + c) * b / 2;
    print('El área del rombo es: $area');
  }
}

void _calcularAreaTrapecio() {
  stdout.write('Ingrese la base mayor del trapecio: ');
  double? baseMayor = _leerNumero();
  
  stdout.write('Ingrese la base menor del trapecio: ');
  double? baseMenor = _leerNumero();
  
  stdout.write('Ingrese la altura del trapecio: ');
  double? altura = _leerNumero();
  
  if (baseMayor != null && baseMenor != null && altura != null) {
    double area = ((baseMayor + baseMenor) * altura) / 2;
    print('El área del trapecio es: $area');
  }
}

void _calcularAreaTrianguloEquilatero() {
  stdout.write('Ingrese el lado del triángulo equilátero: ');
  double? lado = _leerNumero();
  
  if (lado != null) {
    double area = (lado * lado * (3.14 / 4.0)).sqrt();
    print('El área del triángulo equilátero es: $area');
  }
}

void _calcularAreaTrianguloRectangulo() {
  stdout.write('Ingrese la base del triángulo rectángulo: ');
  double? base = _leerNumero();
  
  stdout.write('Ingrese la altura del triángulo rectángulo: ');
  double? altura = _leerNumero();
  
  if (base != null && altura != null) {
    double area = (base * altura) / 2;
    print('El área del triángulo rectángulo es: $area');
  }
}

void _calcularAreaPoligonoRegular() {
  stdout.write('Ingrese el número de lados del polígono regular: ');
  int? lados = _leerEntero();
  
  stdout.write('Ingrese la longitud de un lado: ');
  double? longitud = _leerNumero();
  
  if (lados != null && longitud != null) {
    double apotema = longitud / (2 * (3.14 / lados).tan());
    double area = (lados * longitud * apotema) / 2;
    print('El área del polígono regular es: $area');
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

int? _leerEntero() {
  String? input = stdin.readLineSync();
  
  if (input == null || input.isEmpty) {
    print('Entrada no válida.');
    return null;
  }
  
  int? entero = int.tryParse(input);
  
  if (entero == null) {
    print('Entrada no válida. Asegúrese de ingresar un número entero.');
    return null;
  }
  
  return entero;
}
