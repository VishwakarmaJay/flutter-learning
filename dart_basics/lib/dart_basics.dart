int calculate() {
  return 6 * 7;
}

List<int> divideBySeven() {
  List<int> result = [];
  // for (var i = 1; i <= 1000; i++) {
  //   if (i % 7 == 0) {
  //     result.add(i);
  //   }
  // }

  int i = 1;

  while (i <= 1000) {
    if (i % 7 == 0) {
      result.add(i);
    }
    i++;
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
  if (ratings.isEmpty) {
    return 0.0;
  }

  var total = 0;
  for (var rating in ratings) {
    total += rating;
  }
  return total / ratings.length;
}

String ratingLabel(double average) {
  if (average >= 4.5) {
    return 'Excellent';
  } else if (average >= 3.5) {
    return 'Good';
  } else if (average >= 2.5) {
    return 'Average';
  } else if (average == 0.0) {
    return 'No review';
  } else {
    return 'Poor';
  }
}

String starName(int stars) {
  switch (stars) {
    case 1:
    case 2:
      return 'Low';
    case 3:
      return 'Three Stars';
    case 4:
      return 'Four Stars';
    case 5:
      return 'Five stars';
    default:
      return 'Invalid';
  }
}

double validAverage(List<int> raw) {
  if (raw.isEmpty) {
    return 0.0;
  }

  var total = 0;
  var count = 0;
  for (var rating in raw) {
    if (rating == -1) {
      break;
    }

    if (rating < 1 || rating > 5) {
      continue;
    }
    print('Rating: $rating');
    total += rating;
    count++;
  }
  return count == 0 ? 0.0 : total / count;
}

String formatMovie(String title, {required int year, double rating = 0.0}) {
  return '$title ($year)  ${rating == 0.0 ? '' : '* $rating'}';
}

List<int> keepWhere(List<int> ratings, bool Function(int) test) {
  List<int> result = [];

  for (var rating in ratings) {
    if (test(rating)) {
      result.add(rating);
    }
  }

  return result;
}

int Function() makeViewCounter() {
  var count = 0;
  return () {
    count++;
    return count;
  };
}
