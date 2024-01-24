import 'class2.dart';
import 'dart:io';
void main() {
  Supermarket s = Supermarket();
  print("\tWelcome Supermarket\n");
  stdout.write("Enter Customer Id:");
  s.id = int.parse(stdin.readLineSync() ?? "0");
  stdout.write("Enter Customer Name:");
  s.name = stdin.readLineSync() ?? "no";
  stdout.write("Enter Customer Contact No. :");
  s.contact = int.parse(stdin.readLineSync() ?? "0");

  s.Switch();
}