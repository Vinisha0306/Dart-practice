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
  print("----------Method of Replace Range--------");
  stdout.write("Enter start number:");
  int Replace = int.parse(stdin.readLineSync() ?? "0");
  
  stdout.write("Enter remove renge number:");
  int Range = int.parse(stdin.readLineSync() ?? "0");

  List<int> list=[11,12];
  mylist.replaceRange(Replace,Range,list);

  print("Method of Replace Range : $mylist");
}