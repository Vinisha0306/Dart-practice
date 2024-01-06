import 'dart:io';

void main() {
  stdout.write("Enter List Length:");
  int length = int.parse(stdin.readLineSync() ?? "0");

  print("1D array input:\n");
  List<int> mylist = List.generate(length, (index) {
    stdout.write("${index + 1}) Enter the value:");
    return int.parse(stdin.readLineSync() ?? "0");
  });
  stdout.write("$mylist");

  print("\n\n2D array input:\n");
  List<List<int>> mylist1 = List.generate(length, (index) {
    return List.generate(length, (index1) {
      stdout.write("(${index + 1}:${index1 + 1}) Enter the value:");
      return int.parse(stdin.readLineSync() ?? "0");
    });
  });

  stdout.write("$mylist1");
}
