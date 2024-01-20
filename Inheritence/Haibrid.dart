import 'dart:io';

class A{
  late int a;
   
  void set setA(int a)=>this.a=a;
}

class B extends A{
  late int b;
   
  void set setB(int b)=>this.b=b;  
}

class C extends A{
  late int c;
   
  void set setC(int c)=>this.c=c;

  void sum()
  {
    print("\nSum of $a & $c : ${a+c}");
  }
}

class D extends B{
  late int d;
   
  void set setD(int d)=>this.d=d;

  void sum()
  {
    print("\nSum of $a , $b & $d : ${a+d+b}");
  }
}

class E extends B{
  late int e;
   
  void set setE(int e)=>this.e=e;

  void sum()
  {
    print("\nSum of $a , $b & $e : ${a+e+b}");
  }
}


void main()
{
  C o1=C();
  D o2=D();
  E o3=E();

  print("Class C Object:\n");
  stdout.write("Enter A:");
  o1.setA=int.parse(stdin.readLineSync() ?? "0");

  stdout.write("Enter C:");
  o1
    ..setC=int.parse(stdin.readLineSync() ?? "0")
    ..sum(); 


  print("Class D Object:\n");
  stdout.write("Enter A:");
  o2.setA=int.parse(stdin.readLineSync() ?? "0");

  stdout.write("Enter B:");
  o2.setB=int.parse(stdin.readLineSync() ?? "0");

  stdout.write("Enter D:");
  o2
    ..setD=int.parse(stdin.readLineSync() ?? "0")
    ..sum(); 

  print("Class E Object:\n");
  stdout.write("Enter A:");
  o3.setA=int.parse(stdin.readLineSync() ?? "0");

  stdout.write("Enter B:");
  o3.setB=int.parse(stdin.readLineSync() ?? "0");

  stdout.write("Enter E:");
  o3
    ..setE=int.parse(stdin.readLineSync() ?? "0")
    ..sum(); 
}