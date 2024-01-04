import 'dart:io';

void main() {
  stdout.write("Enter Map Size:");
  int n = int.parse(stdin.readLineSync() ?? "0");

  List<Map<String, dynamic>> mylistofmap = List.generate(n, (index) => {});

  for (int i = 0; i < n; i++) {
    stdout.write("Enter key: ");
    String key = stdin.readLineSync() ?? "0";

    stdout.write("Enter value: ");
    dynamic value = stdin.readLineSync() ?? "0";

    mylistofmap[i] = {key: value};
  };

  print("");
  mylistofmap.forEach((element) {
    element.forEach((key, value) {
      print("$key\t:\t$value");
    });
  });
}
