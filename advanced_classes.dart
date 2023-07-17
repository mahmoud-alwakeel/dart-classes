void main() {
  final jon = Person('jon', 'snow');
  final jane = Student('jane', 'snow');
  final historyGrade = Grade.B;
  jane.grades.add(historyGrade);

  final jessy = SchoolBandMember('jessy', 'jons');
  final marty = StudentAthelete('marty', 'dave');

  final students = [jane , jessy , marty];
  
  print(jon.fullName);
  print(jane.fullName);
  print(jessy.fullName);
  print(marty.fullName);
  print(jane.grades);
}

enum Grade {A, B , C, D, F}

class Person {
  Person(this.givenName, this.surName);
  
  String givenName;
  String surName;
  String get fullName => '$givenName $surName';
  
  @override
  String toString() => fullName;
}

class Student extends Person {
  // take care there is no this keyword here since Student doesn't have the field names givenName and surName
  Student(String givenName, String surName)
    : super (givenName, surName);
  
  var grades = <Grade>[];

  //the compiler will give an error if we think we are overridng something that doesn't actually exist in the parent class 
  @override
  String get fullName => '$surName , $givenName';
}

class SchoolBandMember extends Student {
  SchoolBandMember(String givenName, String surName)
    : super (givenName, surName);
  static const minimumPracticeTime = 2;
}

class StudentAthelete extends Student {
  StudentAthelete(String givenName, String surName)
    : super (givenName, surName);
  bool get isEligible => grades.every((grade) => grade != Grade.F);
}