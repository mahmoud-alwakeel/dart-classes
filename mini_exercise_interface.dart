/*
1 - create and interface called Bottle and add a method to it called open 
2 - create a concrete class called SodaBottle that implements Bottle and prints "Fizz fizz" when open is called 
3 - add factory constructor to Bottle That returns SodaBottle instance
4 - instantiate SodaBottle by using the Bottle factory constructor and call open on the object .
*/


void main() {
  final repository = Bottle();
  repository.open();
}

abstract class Bottle {
  factory Bottle() => SodaBottle();
  void open();
}


class SodaBottle implements Bottle {
  @override
  void open() {
     print("Fizz fizz");
  }
}
