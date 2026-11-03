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

  // print(dart_basics.formatMovie('Dune', year: 2021, rating: 4.5));
  // print(dart_basics.formatMovie('Arrival', year: 2016));

  // print(dart_basics.keepWhere([3, 8, 1, 6, 9, 2], (rating) => rating >= 4));
  // print(dart_basics.keepWhere([3, 8, 1, 6, 9, 2], (rating) => rating % 2 == 1));

  // var duneCounter = dart_basics.makeViewCounter();
  // var arrivalCounter = dart_basics.makeViewCounter();

  // duneCounter();
  // duneCounter();
  // duneCounter();

  // arrivalCounter();

  // print(duneCounter());
  // print(arrivalCounter());\

  // final movieRatings = {
  //   'Dune': [5, 4, 5],
  //   'Arrival': [4, 4],
  //   'Cats': <int>[],
  //   'Tenet': [3, 2, 4],
  // };

  // var ratings = dart_basics.averagesByMovie(movieRatings);

  // ratings.forEach((movie, ratings) {
  //   print('$movie : $ratings');
  // });

  // print(dart_basics.topMovies(ratings, 4));

  // print(dart_basics.uniqueGenres(['scifi', 'drama', 'scifi', 'war', 'drama']));

  // print(dart_basics.totalRatingsCount(movieRatings));

  // Build both collections BEFORE timing, so only the lookups are measured.
  // final dummy = List.generate(200000, (index) => index);
  // final dummySet = dummy.toSet();

  // // Look up values near the END of the list, so List.contains has to walk
  // // almost all 200,000 items each time (contains(5) stopped after 6).
  // const lookups = 2000;

  // final sw = Stopwatch()..start();
  // var listHits = 0;
  // for (var i = 0; i < lookups; i++) {
  //   if (dummy.contains(199999 - i)) listHits++;
  // }
  // sw.stop();
  // print('List.contains x$lookups: ${sw.elapsedMilliseconds} ms ($listHits found)');

  // sw.reset();
  // sw.start();
  // var setHits = 0;
  // for (var i = 0; i < lookups; i++) {
  //   if (dummySet.contains(199999 - i)) setHits++;
  // }
  // sw.stop();
  // print('Set.contains  x$lookups: ${sw.elapsedMilliseconds} ms ($setHits found)');

  // var r = [1, 2, 3].where((x) {
  //   print('check $x');
  //   return x > 1;
  // });
  // print('start');
  // print(r.length);
}
