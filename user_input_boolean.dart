import 'dart:io';

void main()
{

  stdout.write("Enter List growable (true or false):");
  bool n=stdin.readLineSync() == 'true' ? true : false ;

    stdout.write("Enter List Size:");
    int n1=int.parse(stdin.readLineSync() ?? "0");

    List<int> mylist = List.generate(n1, (index) 
    {
      stdout.write("Enter ${index+1} value:");
      return int.parse(stdin.readLineSync() ?? "0");
    },growable:n);

  if(n==true)
  {
    stdout.write("\nEnter add value in List:");
    int n2=int.parse(stdin.readLineSync() ?? "0");

    mylist.add(n2);
  }

  if(n==true)
  {
    stdout.write("Enter remove value in List:");
    int n3=int.parse(stdin.readLineSync() ?? "0");

    mylist.remove(n3);
  }

  if(n==false)
  {
    print("\nGrowable is false");

    stdout.write("Enter update index :");
    int a1=int.parse(stdin.readLineSync() ?? "0");

    stdout.write("Enter value :");
    int a=int.parse(stdin.readLineSync() ?? "0");

    mylist[a1-1]=a;
  }

  print("\n$mylist");
}