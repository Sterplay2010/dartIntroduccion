//extends ayuda a que podamos extender una clase con funcionalidades de otra
//Nota: tambien se puede usar en clases abstractas
void main() {
  final ghost = new Heroe('Ghost Rider');
  final lokki = new Villano('Lokki');
  print(ghost);
  print(lokki);
}

abstract class Personaje {
  String? poder;
  String nombre;

  Personaje(this.nombre);

  @override
  String toString() {
    return '$nombre - $poder';
  }
}

//Cada clase puede tener sus propiedades individuales :D

class Heroe extends Personaje {
  int valentia = 100;
  Heroe(String nombre) : super(nombre);
}

class Villano extends Personaje {
  int maldad = 50;
  Villano(String nombre) : super(nombre);
}
