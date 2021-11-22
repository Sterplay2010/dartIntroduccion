//Es una clase que no se puede instanciar
void main() {
  final perro = new Perro();
  final gato = new Gato();
  sonidoAnimal(perro);
  sonidoAnimal(gato);
}

void sonidoAnimal(Animal animal) {
  animal.emitirSonido();
}

/*
El abstract sirve para obligar a otras clases a que implementen o que puedan 
aceptar las caracteristicas de otra clase.
NOTA: Lo que cheque es que se utilizan para generar cosas un poco mas genericas
como por ejemplo el perro, en la funcion sonidoAnimal() yo le paso como parametro
Perro perro, sin embargo, como abajo le estoy diciendo que implemente Animal esta por
defecto lo tomara como que es un animal por la implementacion de la clase.
*/
abstract class Animal {
  int? patas;

  void emitirSonido() {}
}

class Perro implements Animal {
  int? patas;

  void emitirSonido() {
    print('* se pone a ladrar *');
  }
}

class Gato implements Animal {
  int? patas;
  int? cola;

  void emitirSonido() {
    print('* se pone a maullar *');
  }
}
