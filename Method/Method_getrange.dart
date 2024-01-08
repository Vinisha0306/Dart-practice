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
  print("----------Method of getrange--------");
  stdout.write("Enter start number:");
  int get = int.parse(stdin.readLineSync() ?? "0");
  
  stdout.write("Enter end number:");
  int range = int.parse(stdin.readLineSync() ?? "0");
  
  List getrange=mylist.getRange(get,range).toList();
  print("Method of getrange : $getrange");
}