import 'dart:io';
void main()
{
  stdout.write("Enter List size:");
  int length = int.parse(stdin.readLineSync()??"0");
  
  List<int> mylist = List.generate(length,(index) 
  {
    stdout.write("Enter ${index+1} value:");
    return int.parse(stdin.readLineSync()?? "0");
  }); 
  print(mylist);
  print("");
  print("----------Method of first where--------");
  mylist.firstWhere((e) => e>5);
  print(mylist);
}