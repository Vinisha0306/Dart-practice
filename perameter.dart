import 'dart:io';

void perameter(int a,int b)
{
  print("Sum of $a,$b = ${a+b}");
}

void perameter1(int a,int b,[int c=0])
{
  print("Sum of $a,$b,$c = ${a+b+c}");
}

int perameter2({required a,required b})
{
  return a+b;
}
void main()
{
  stdout.write("Enter any first number:");
  int a=int.parse(stdin.readLineSync() ?? "0");

  stdout.write("Enter any secound number:");
  int b=int.parse(stdin.readLineSync() ?? "0");

  perameter(a, b);
  perameter1(a, b,45);

  print("\nsum of $a,$b = ${perameter2(a: a,b: b)}");
}