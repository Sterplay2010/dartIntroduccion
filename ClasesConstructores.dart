void main() {
  final rawJson = {'nombre': 'Tony Stark', 'power': 'Dinero'};

  //El new es opcional
  //final wolverine = new Heroe(nombre: 'Logan', power: 'Regeneracion');

  //print(wolverine);
}

/*
- Metodos, propiedades y constructores
*/

class Heroe {
  String nombre;
  String power;

  //Constructor
  Heroe({required this.nombre, required this.power});

  //Constructor por nombre
  //El ?? es una condicion que se utiliza por si no tiene nada el json o el objeto
  Heroe.fromJson(Map<String, dynamic> json)
      : this.nombre = json['nombre'] ?? 'No tiene nombre',
        this.power = json['poder'] ?? 'No tiene poder';

  //Indica que quiero sobreescribir algo
  @override
  String toString() {
    return 'Heroe: nombre: ${this.nombre}, poder: ${this.power}';
  }
}
