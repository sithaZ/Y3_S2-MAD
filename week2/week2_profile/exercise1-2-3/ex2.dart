Map<String, num> getStats(List<num> numbers) {
  if (numbers.isEmpty) return {'sum': 0, 'min': 0, 'max': 0};

  var sum = numbers.reduce((a, b) => a + b);
  var min = numbers.reduce((a, b) => a < b ? a : b);
  var max = numbers.reduce((a, b) => a > b ? a : b);

  return {'sum': sum, 'min': min, 'max': max};
}

void main() {
  print(getStats([85, 92, 78, 95, 88]));
}