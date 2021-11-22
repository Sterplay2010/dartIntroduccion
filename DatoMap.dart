void main() {
  //Mapas
  //Son de tipo dynamic
  Map persona = {
    'nombre': 'Fernando',
    'edad': 35,
    'soltero': false,
    true: false,
    1: 100,
    2: 500
  };
  print(persona);
  //Acceder a las propiedades del objeto
  //Se ve raro pero puedes acceder a cualquier propiedad como ese valor 2 ._.XD
  print(persona[2]);
  //Añadir algo al mapa
  persona.addAll({'domicilio': 'No se jajajaj'});

  //Mapa con tipo de dato
  //Funciona con cualquie tipo de dato
  //  String Numeros
  //  Numeros String
  //  String dynamic
  Map<String, String> personaEspecial = {
    'nombre': 'Fernando',
    'edad': '35',
    'soltero': 'false',
    'true': 'false',
    '1': '100',
    '2': '500'
  };
}
