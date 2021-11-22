import 'dart:math' as Math;

void main() {
  final cuadrado = Cuadrado(0);
  cuadrado.area = 25;
  print('Area del cuadrado es: ${cuadrado.calcularArea()}');
  print('lado: ${cuadrado.lado}');
  print('Area get : ${cuadrado.area}');

  /* 
  El set es el procedimiento en el cual se establece el valor de una propiedad 
  */
}

class Cuadrado {
  double lado;
  //Constructor
  Cuadrado(double lado) : this.lado = lado;

  /*
  El get es metodo que luce como metodo pero se llama como una propiedad ._.XD
  */
  double get area {
    return this.lado * this.lado;
  }

  set area(double valor) {
    this.lado = Math.sqrt(valor);
  }

  //Metodo para calcular el Area
  double calcularArea() {
    return this.lado * this.lado;
  }
}
