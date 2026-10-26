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
