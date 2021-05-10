class Person {
  Person(this.name, this.age, this.lastName, this.id);
  final String name;
  final String lastName;
  final String id;
  final int age;

  getName() => this.name;
  getLastName() => this.lastName;
  getAge() => this.age;
  getId() => this.id;

}