import 'dart:io';

void main()
{
  stdout.write("Enter List Size:");
  int n=int.parse(stdin.readLineSync() ?? "0");
  stdout.write("Growable List:");

  List mylist = List.generate(10,(index) => index+1);
  mylist.add(64);
  print("MyList Generate : $mylist");

  stdout.write("\n\nFixed length List : ");

  List mylist1 = List.generate(n, (index)
  {
    stdout.write("Enter ${index+1} value:");
    return int.parse(stdin.readLineSync() ?? "0");
  },growable: false);

  print(mylist1);
}