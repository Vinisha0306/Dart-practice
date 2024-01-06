import 'dart:io';

void main()
{
  stdout.write("Enter List Size:");
    int n1=int.parse(stdin.readLineSync() ?? "0");

    List<int> mylist = List.generate(n1, (index) 
    {
      stdout.write("Enter ${index+1} value:");
      return int.parse(stdin.readLineSync() ?? "0");
    });

  // print("${mylist.toSet().toList()}");

  List<int> uniqueList=List.from(mylist.toSet());

  print(uniqueList);
}