import 'package:dart_basics/dart_basics.dart' as dart_basics;

void main(List<String> arguments) {
  print('Hello');

  // for (var word = 'J'; word.length < 4; word = word + 'a') {
  //   print(word);
  // }

  // List<int> count = [];
  // for (int i = 1; i <= 1000; i++) {
  //   if (i % 7 == 0) {
  //     count.add(i);
  //   }
  // }

  // print(count);

  // print('Divisble by 7 :  ${dart_basics.divideBySeven().length}');
  // int total = 0;
  // for (int i = 1; i <= 20; i++) {
  //   total += i;
  // }
  // print('Total: $total');

  // print('ratingLabel: ${dart_basics.ratingLabel(4.8)}');
  // print('ratingLabel: ${dart_basics.ratingLabel(3.8)}');
  // print('ratingLabel: ${dart_basics.ratingLabel(0.0)}');

  // print('Star name : ${dart_basics.starName(2)}');
  // print('Star name : ${dart_basics.starName(7)}');

  // print('Total: ${dart_basics.validAverage([4, 0, 5, 9, 3, -1, 2])}');
  // print('Total: ${dart_basics.validAverage([0, 9, -1])}');
  // print('ratingLabel: ${dart_basics.ratingLabel(3.0)}');

  print(dart_basics.formatMovie('Dune', year: 2021, rating: 4.5));
  print(dart_basics.formatMovie('Arrival', year: 2016));

  print(dart_basics.keepWhere([5, 2, 4, 1, 3], (rating) => rating >= 4));
  print(dart_basics.keepWhere([5, 2, 4, 1, 3], (rating) => rating % 2 == 0));

  var duneCounter = dart_basics.makeViewCounter();
  var arrivalCounter = dart_basics.makeViewCounter();

  duneCounter();
  duneCounter();
  duneCounter();

  arrivalCounter();

  print(duneCounter());
  print(arrivalCounter());

  // print(dart_basics.formatMovie('Arrival'));
}
