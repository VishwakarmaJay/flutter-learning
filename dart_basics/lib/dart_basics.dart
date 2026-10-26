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

void main() {
  print('start');
  print(bestRating([3, 5, 4])); // line 11
}

// int x = "Hello, Dart!";
