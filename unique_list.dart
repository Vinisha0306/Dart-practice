import 'dart:io';

void main()
{
  List mylist=List.generate(5, (index) => 1);

  print("${mylist.toSet().toList()}");

}