import 'dart:io';

void main() {
  List mylist = [1, 2, 6, "vinisha", 4.9];
  print("MyList : ${mylist}");

  mylist.add('v');
  print("\nMyList Add : ${mylist}");

  mylist.addAll([86, 954, 672.97, "abc"]);
  print("\nMyList AddAll : ${mylist}");

  mylist.remove("vinisha");
  print("\nMyList Remove : ${mylist}");

  mylist.removeAt(2);
  print("\nMyList RemoveAt : ${mylist}");

  List<Map<String, dynamic>> mylistofmap = [
    {
      "id": 102,
      "name": "vinisha",
    }
  ];
  print("\nMyList Of Map : $mylistofmap\n");

  stdout.write("Enter List Size:");
  int n1=int.parse(stdin.readLineSync() ?? "0");

  List<int> mylist1 = List.generate(n1, (index) 
  {
    stdout.write("Enter ${index+1} value:");
    return int.parse(stdin.readLineSync() ?? "0");
  });

  mylist1.removeWhere((element) => element%2==0);
  print("\nMyList1 RemoveWhere : $mylist1");

  bool b=mylist1.contains(35);
  print("\nMyList1 Contsins : $b");

  print("\nprint With ForEach : ");
  mylist1.forEach((element)
  {
    print("\t\t    $element");
  });
}
