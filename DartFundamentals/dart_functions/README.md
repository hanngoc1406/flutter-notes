## Hàm trong Dart

- Đây là một khái niệm đã khá quen thuộc với anh em học IT, đơn giản hàm là một khối lệnh thực hiện một tác vụ, khối lệnh này được dùng nhiều lần nên gom chúng tại thành một hàm 
- Trong Dart mọi thứ đều là đối tượng nên hàm cũng vậy, tức là bạn có thể kế thừa hàm.

```Dart
void main() {
    // Gọi hàm 
    printMyName();
    helloPersonAndPet('Nick', 'Boo');
    
    var hello = sayHello("Duc");
    print(hello);
}

void printMyName() {
    print('Phan Anh Duc');
}

// Hàm trả về giá trị
String sayHello(String name) {
    print("xin chao $name");
}

void helloPersonAndPet(String person, String pet) {
    print('Hello, $person, and your furry friend, $pet!');
}
```

- **Optional Parameters** 
  - Tham số có thể có truyền vào hoặc không truyền vào được khai trong ngoặc vuông `[]` với dấu `?` và có kiểu dữ liệu là `optinal`
  - Bạn cũng có thể cung cấp giá trị mặc định cho thêm số optional

```Dart
void main() {
    var optionalParameters = fullName("Mr", "Phan", "Duc");
    var optionalParametersDefault = sayFullName("Phan", "Duc");

    print(optionalParameters); // In ra: Mr Phan Duc
    print(optionalParametersDefault); // In ra: Hello Phan Duc
}

String fullName(String title, [String? first, String? last]) {
  // first và last ở đây có kiểu là optional
    if (first != null && last != null) {
        return '$title $first $last';
    } else {
        return '$title';
    }
}

String sayFullName(String first, String last, [String title = "Hello"]) {
    return '$title $first $last';
}
```

- **Naming và named parameters** 
  - Naming và named về cơ bản là giống nhau nhưng `named` có thêm từ khóa `required` và khi có `required` thì tham số bắt buộc phải truyền vào 
  - Để khai báo thì dúng ta đặt tên biến trong `{}`
  - Có thể có optional và giá trị mặc định

```Dart
void main() {
  // Khi gọi hàm sẽ có thêm label min và max
  var checkBetween = withinTolerance(5, min: 0, max: 10);
  print(checkBetween); // sẽ in ra: true

  var checkBetween2 = withinTolerance2(6, min: 0, max: 5);
  print(checkBetween2); // sẽ in ra: false
}

bool withinTolerance(int value, {int min = 0, int max = 10}) {
  return min <= value && value <= max;
}

// named
bool withinTolerance2(int value, {required int min, required int max}) {
  return min <= value && value <= max;
}
```
- Function cũng có thể trả về dạng dữ liệu dynamic với cách khai báo giống với `var`

```Dart
void main() {
  var dynamicNumber = compliment(10);
  var dynamicString = compliment("Hello");
  print(dynamicNumber); // sẽ in ra: 10 is a very nice int
  print(dynamicString); // sẽ in ra: Hello is a very nice String
}

compliment(number) {
  var type = number.runtimeType;
  return '$number is a very nice $type';
}
```
- Ngoài ra các bạn còn có thể bỏ luôn tên hàm và khai báo như hàm một kiểu dữ liệu (Anonymous functions). 
- Các bạn cũng có thể viết một function trả về một function khác với cấu trúc: `Function functionName(params) { return (params) }`
- Nếu fuction chỉ có 1 dòng thì `return` trong Dart cũng có thể việt ngắn gọn lại bằng `=>`

```Dart
void main () {
    // Hàm ẩn danh
    final multiply = (int a, int b) {
        return a * b;
    };

    print(multiply(2, 3)); // sẽ in ra: 6

    // Viết ngắn gọn hơn
    final multiply2 = (int a, int b) => a * b;
    print(multiply2(2, 5)); // sẽ in ra: 10

    // Hàm trả về một hàm khác
    Function applyMultiplier(num multiplier) {
        // trả về hàm ẩn danh
        return (num value) {
            return value * multiplier;
        };
    }

    // triple vẫn là 1 function trả về giá trị value * multiplier của hàm ẩn danh phía trên
    final triple = applyMultiplier(3);
    print(triple(6)); // sẽ in ra: 18

    // doubleIt vẫn là 1 function trả về giá trị value * multiplier của hàm ẩn danh phía trên
    final doubleIt = applyMultiplier(2);
    print(doubleIt(3)); // sẽ in ra: 6
}
```

## Nguồn tham khảo
- Bài viết được tham khảo từ tài liệu của đồng nghiệp
- Series và Dart và Flutter của [fxstudio](https://fxstudio.dev/category/code/flutter-dart/)