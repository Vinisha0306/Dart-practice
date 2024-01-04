void main()
{
  List mylist=[1,2,6,"vinisha",4.9];
  print("${mylist}");

  mylist.add('v');
  print("${mylist}");

  mylist.addAll([86,954,672.97,"abc"]);
  print("${mylist}");

  mylist.remove("vinisha");
  print("${mylist}");

  mylist.removeAt(2);
  print("${mylist}");

}