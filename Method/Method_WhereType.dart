
void main()
{

  List mylist = [1,2,'dog',true,'ball','cat',76,12.32,];
  print(mylist);
  print("");
  print("----------Method of Where Type--------");
  List wheretype = (mylist.whereType<String>()).toList();
  print(wheretype);
}