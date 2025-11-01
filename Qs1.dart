import 'dart:io';

void main() {
  int a=5;
List abc = [1,2,3,4,5,6,7];
print(abc[3]);
print(abc.first);
print(abc.last);
abc.add(123);
abc.addAll([123,122,121,144]);
print(abc);

abc.sort();
print(abc);
abc.replaceRange(2, 5, [4,5,44,55,33]);
print(abc);
stdout.write("enter your name");
var name = stdin.readLineSync();
print(name);
}
