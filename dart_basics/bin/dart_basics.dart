// import 'package:dart_basics/dart_basics.dart' as dart_basics;

void main(List<String> arguments) {
  // print('Hello');

  // print('here is the list of numbers divisible by 7:');
  // print(dart_basics.divideBySeven());

  // int x = "Hello. Dart";

  // print("Here is the list of numbers divisible by 7:")

  // print(dart_basics.averageRating([4, 3, 5, 4]));

  var name = 'Jay';

  if (true) {
    var name = 'KK'; // ← note the var
    print('inside A: $name');
  }
  print('after A: $name');

  if (true) {
    name = 'KK'; // ← no var
    print('inside B: $name');
  }
  print('after B: $name');
}
