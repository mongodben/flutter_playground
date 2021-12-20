void main() {
  Person me = Person("Ben", 27);
  print(me.name);
  for (int i = 0; i < 5; i++) {
    print(addInts(i, i + 1));
  }
}

int addInts(int int1, int int2) {
  return int1 + int2;
}

class Person {
  String name;
  int age;

  Person(this.name, this.age);
}
