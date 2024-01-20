import 'dart:io';

class A{
  late int a;
   
  void set setA(int a)=>this.a=a;
}

class B extends A{
  late int b;
   
  void set setB(int b)=>this.b=b;
  void sum()
  {
    print("\nSum of $a & $b : ${a+b}\n");
  }
}

class C extends A{
  late int c;
   
  void set setC(int c)=>this.c=c;

  void sum()
  {
    print("\nSum of $a & $c : ${a+c}");
  }
}

void main()
{
  B o1=B();
  C o2=C();

  stdout.write("Enter A:");
  o1.setA=int.parse(stdin.readLineSync() ?? "0");

  stdout.write("Enter B:");
  o1..setB=int.parse(stdin.readLineSync() ?? "0")
    ..sum();

  stdout.write("Enter A:");
  o2.setA=int.parse(stdin.readLineSync() ?? "0");

  stdout.write("Enter C:");
  o2
    ..setC=int.parse(stdin.readLineSync() ?? "0")
    ..sum(); 
}