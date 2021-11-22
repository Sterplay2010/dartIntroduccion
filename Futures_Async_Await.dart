/* 
Un future es una tarea asincrona que se hace
a destiempo en un hilo diferente de nuestra app, es como una 
promesa en javascript
*/
void main() async {
  print('Antes de la peticion');

  final data = await httpGet('www.youtube.com');
  print(data);
  //final nombre = await getNombre('10');
  //print(nombre);
  //getNombre('10').then((data) => print(data));
  print('Fin del programa');
}

Future<String> getNombre(String id) async {
  return '$id - Raul';
}

//Si se sabe que tipo de dato es el que regresa es necesario indicarselo al Future
Future httpGet(String url) {
  //el delayed es una propiedad de tiempo, al igual que el Duration
  return Future.delayed(Duration(seconds: 3), () {
    return 'Hola mundo - 3 segundos';
  });
}
