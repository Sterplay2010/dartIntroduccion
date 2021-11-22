/* 
Sirve para implementar ciertas caracteristicas independientes de una clase
*/

abstract class Animal {
  double size;
  String caracteristicas;

  Animal(this.size, this.caracteristicas);

  @override
  String toString() {
    return '$size - $caracteristicas';
  }
}

abstract class Mamifero extends Animal {
  Mamifero(double size, String caracteristicas) : super(size, caracteristicas);
}

abstract class Ave extends Animal {
  Ave(double size, String caracteristicas) : super(size, caracteristicas);
}

abstract class Pez extends Animal {
  Pez(double size, String caracteristicas) : super(size, caracteristicas);
}

abstract class Volador {
  void volar() => print('* se va volando *');
}

abstract class Caminante {
  void caminar() => print('* se va caminando *');
}

abstract class Nadador {
  void nadar() => print('* se va caminando *');
}

class Delfin extends Mamifero with Nadador {
  Delfin(double size, String caracteristicas) : super(size, caracteristicas);
}

class Murcielago extends Mamifero with Caminante, Volador {
  Murcielago(double size, String caracteristicas)
      : super(size, caracteristicas);
}

void main() {
  final delfinCuliao = new Delfin(2.0, 'Esta chido jajaja');
  final creadorDelCovid = new Murcielago(0.54, 'Creador del covid');

  creadorDelCovid.caminar();
  creadorDelCovid.volar();
  print(creadorDelCovid.caracteristicas);
}
