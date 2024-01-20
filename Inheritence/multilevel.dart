import 'dart:io';

class A{
  late int a;
   
  void set setA(int a)=>this.a=a;
}

class B extends A{
  late int b;
   
  void set setB(int b)=>this.b=b;
}

class C extends B{
  late int c;
   
  void set setC(int c)=>this.c=c;

  void sum()
  {
    print("\nSum of $a,$b & $c : ${a+b+c}");
  }
}


void main()
{
  C o1 =C();

  stdout.write("Enter A:");
  o1.setA=int.parse(stdin.readLineSync() ?? "0");

  stdout.write("Enter B:");
  o1.setB=int.parse(stdin.readLineSync() ?? "0");

  stdout.write("Enter C:");
  o1
    ..setC=int.parse(stdin.readLineSync() ?? "0")
    ..sum();
}