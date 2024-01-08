import 'dart:io';

void main()
{
  stdout.write("Enter List size:");
  int length = int.parse(stdin.readLineSync()??"0");
  
  List mylist = List.generate(length,(index) 
  {
    stdout.write("Enter ${index+1} value:");
    return int.parse(stdin.readLineSync()?? "0");
  }); 
  print(mylist);
  print("");
  print("----------Method of Sublist--------");
  stdout.write("Enter start number:");
  int sub = int.parse(stdin.readLineSync() ?? "0");
  
  stdout.write("Enter end number:");
  int list = int.parse(stdin.readLineSync() ?? "0");
  
  List sublist=mylist.sublist(sub,list);
  print("Method of sublist : $sublist");
}