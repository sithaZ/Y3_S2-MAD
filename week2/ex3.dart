Future<List<int>> fetchGrades() async {
  await Future.delayed(Duration(seconds: 2));
  return [85, 92, 78, 95, 88];
}

void main() async {
  print('Fetching grades...');
  try {
    List<int> grades = await fetchGrades();
    double average = grades.reduce((a, b) => a + b) / grades.length;
    print('the Grades: $grades');
    print('Average Grade: $average');
  } catch (e) {
    print('An error occurred: $e');
  }
}