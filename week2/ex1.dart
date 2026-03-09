class Student {
  String name;
  double? gpa;
  int year;
  Student(this.name, this.year, {this.gpa});
  //Named Constructor
  Student.unknown() : name = 'Unknown', year = 1;
  String status(){
  return 'Name: $name, Year: $year, GPA: ${gpa?.toString() ?? 'Not Available'}';

  }
}
void main() {
  Student student1 = Student('Sitha', 2, gpa: 3.5);
  Student student2 = Student.unknown();
  
  
  print(student1.status());
  print(student2.status());
}