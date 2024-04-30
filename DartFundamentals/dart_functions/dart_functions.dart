void main() {
  printMyName();
  var hello = sayHello("Duc");
  print(hello);

  var optionalParameters = fullName("Mr", "Phan", "Duc");
  var optionalParametersDefault = sayFullName("Phan", "Duc");

  print(optionalParameters); // In ra: Mr Phan Duc
  print(optionalParametersDefault); // In ra: Hello Phan Duc

  var checkBetween = withinTolerance(5, min: 0, max: 10);
  print(checkBetween); // sẽ in ra: true

  var checkBetween2 = withinTolerance2(6, min: 0, max: 5);
  print(checkBetween2); // sẽ in ra: false

  var dynamicNumber = compliment(10);
  var dynamicString = compliment("Hello");
  print(dynamicNumber); // sẽ in ra: 10 is a very nice int
  print(dynamicString); // sẽ in ra: Hello is a very nice String
}

void printMyName() {
    print('Phan Anh Duc');
}

String sayHello(String name) {
    return 'Hello $name';
}

String fullName(String title, [String? first, String? last]) {
  // title ở đây có kiểu là optinal
  if (first != null && last != null) {
    return '$title $first $last';
  } else {
    return '$title';
  }
}

String sayFullName(String first, String last, [String title = "Hello"]) {
  return '$title $first $last';
}

bool withinTolerance(int value, {int min = 0, int max = 10}) {
  return min <= value && value <= max;
}

bool withinTolerance2(int value, {required int min, required int max}) {
  return min <= value && value <= max;
}

compliment(number) {
  var type = number.runtimeType;
  return '$number is a very nice $type';
}