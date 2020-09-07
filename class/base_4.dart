class Person {
  String firstName;

  Person.fromJson(Map data) {
    print('in Person');
  }
}

class Child extends Person {
  Child.fromJson(Map data) : super.fromJson(data) {
    print('in Child');
  }
}

class Employee extends Person {
  // Person does not have a default constructor;
  // you must call super.fromJson(data).
  Employee.fromJson(Map data) : super.fromJson(data) {
    print('in Employee');
  }
}

main() {
  var emp = new Employee.fromJson({});

  // Prints:
  // in Person
  // in Employee
  if (emp is Person) {
    // Type check
    emp.firstName = 'Boba';
  }
  (emp as Person).firstName = 'Bobb';
  print('the emp is ${emp.firstName}');
}
