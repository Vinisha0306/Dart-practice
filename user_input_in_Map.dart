import 'dart:io';

void main() {
  stdout.write("Enter Map Size:");
  int n = int.parse(stdin.readLineSync() ?? "0");

  Map<String, dynamic> myMap = {};

  for (int i = 1; i <= n; i++) {
    stdout.write("Enter $i key: ");
    String key = stdin.readLineSync() ?? "0";

    stdout.write("Enter $i value: ");
    dynamic value = stdin.readLineSync() ?? "0";

    myMap[key] = value;
  }
  ;
  print("");
  myMap.forEach((key, value) {
    print("$key : $value");
  });
}
