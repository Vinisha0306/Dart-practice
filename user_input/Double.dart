import 'dart:io';

void main()
{
  stdout.write("Enter List Size:");
  int n1=int.parse(stdin.readLineSync() ?? "0");

  List<double> mylist = List.generate(n1, (index) 
  {
    stdout.write("Enter ${index+1} value:");
    return double.parse(stdin.readLineSync() ?? "0.0");
  });

  print("\n$mylist");
}