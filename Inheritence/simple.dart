import 'dart:io';

class A{
  late String Name1;

  void set SetName1(String name1)=>this.Name1=name1;
}

class B extends A{
  late String Name2;

  void set SetName2(String name2)=>this.Name2=name2;

  void name()
  {
    print("Your Name: $Name1 $Name2");
  }
}


void main()
{
  B o1=B();

  stdout.write("Enter Your Name:");
  o1.SetName1=stdin.readLineSync() ?? "No";

  stdout.write("Enter Your SurName:");
  o1.SetName2=stdin.readLineSync() ?? "No";

  o1.name();
}