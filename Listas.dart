void main() {
  //Son colecciones de elementos que tienen un elemento en comun
  //Son de tipo dynamic (cualquier cosa), aunque puedes indicarle en tipo de dato
  //Son en base 0
  List<double> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  //Metodos de list
  numeros.add(11);
  print(numeros[0]);
  //Metodo generate, es un metodo estatico que se puede llamar sin crear una instacia
  //de la misma.
  final masNumeros = List.generate(100, (index) => 10);
  print(masNumeros);
}
