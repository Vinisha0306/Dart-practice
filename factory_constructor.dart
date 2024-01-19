import 'dart:io';

class Student {
  final int id;
  late String name;
  late int age;

  Student({required this.id, required this.name, required this.age});

  factory Student.fromMap({required Map mylist}) {
    return Student(
      id: mylist['id'],
      name: mylist['name'],
      age: mylist['age'],
    );
  }

  void printuser() {
    print("id:$id");
    print("name:$name");
    print("age:$age");
  }
}

void main() {
  stdout.write("Enter Student number:");
  int n = int.parse(stdin.readLineSync() ?? "0");

  List<Map<String, dynamic>> mylistofmap = List.generate(n, (index) => {});

  for (int i = 0; i < n; i++) {
    stdout.write("Enter ${i + 1} id: ");
    int id = int.parse(stdin.readLineSync() ?? "0");

    stdout.write("Enter ${i + 1} name: ");
    String name = stdin.readLineSync() ?? "0";

    stdout.write("Enter ${i + 1} age: ");
    int age = int.parse(stdin.readLineSync() ?? "0");

    mylistofmap[i] = {'id': id, 'name': name, 'age': age};
  }
  ;

  List<Student> alluser =
      mylistofmap.map((e) => Student.fromMap(mylist: e)).toList();

  print("");
  alluser.forEach((element) {
    element.printuser();
  });
}
