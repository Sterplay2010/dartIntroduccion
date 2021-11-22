//Son bloques de codigo que se pueden ejecutar por muchas razones xd
void main() {
  final String? nombre = 'Raul';
  saludar(nombre);
  saludar2(mensaje: 'Satoshi', nombre: 'Caca');
}

//Argumentos opcionales se usan con [].
void saludar(String? nombre, [String mensaje = 'Hola']) {
  print('$mensaje $nombre');
}

//Ejemplo para mandar el orden de los argumentos como sea.
void saludar2({required String nombre, required String mensaje}) {
  print('$nombre $mensaje');
}
