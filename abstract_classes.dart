void main() {
  final platypus = Platypus();
  print(platypus.isAlive);
  platypus.eat();
  platypus.move();
  platypus.layEggs();
  print(platypus);
}

abstract class Animal {
  bool isAlive = true;
  void eat();
  void move();

  @override
  String toString() {
    // the runtime type is platypus here
    return "I'm a $runtimeType";
  }
}

class Platypus extends Animal {
  @override
  void eat() {
    print('munch munch');
  }
  @override
  void move() {
    print('glide glide');
  }
  // abstract class subclasses can also have their unique methods 
  void layEggs(){
    print('blop blop');
  }
}