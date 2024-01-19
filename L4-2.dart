import 'dart:io';

class a
{
  late String name;

  void set name1(String name)=> this.name=name;
  
  String get getname=>name;

  void getname1()
  {
    print("Name : $name");
  }
}

void main()
{
  a o1 = a();
  a o2 = a();

  stdout.write("Enter your Name:");
  o1.name1 = stdin.readLineSync() ?? "no";

  print("Name : ${o1.getname}");

  o2
    ..name1 = "Aayushi"
    ..getname1();
}