int calculate() {
  return 6 * 7;
}

List<int> divideBySeven() {
  List<int> result = [];
  for (var i = 1; i <= 1000; i++) {
    if (i % 7 == 0) {
      result.add(i);
    }
  }
  return result;
}

int pickRating(List<int> ratings, int index) {
  return ratings[index]; // line 2
}

int bestRating(List<int> ratings) {
  return pickRating(ratings, ratings.length - 1); // line 6
}

double averageRating(List<int> ratings) {
  var total = 0;
  for (var i = 0; i < ratings.length; i++) {
    total = total + ratings[i];
  }
  return total / ratings.length;
}

// int x = "Hello, Dart!";
