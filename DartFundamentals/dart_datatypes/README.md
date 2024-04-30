## Variables (Biến) và Constant (Hằng số)
- **var:** Để khai báo một biến
- **Const:** Để khai báo hằng số và giá trị sẽ không thay đổi
- **final:** Về cơ bản là giống `const` nhưng sẽ khởi tạo một lần tức là giá trị của `final` sẽ không được xác định cho khi chương trình thực thi và sau đó không thay đổi nữa. `final` khá giống với `let` trong swift.  
- **static** dùng để khai báo biến lớp và phương thức. Nó thường quản lý bộ nhớ cho biến dữ liệu toàn cục vì vậy nếu chúng ta khai báo static thì có thể truy cập nó mà không cần tạo một đối tượng. Đối tượng lớp không bắt buộc phải truy cập vào phương thức hoặc biến static, chúng ta có thể truy cập nó bằng cách đặt tên lớp trước biến hoặc phương thức tĩnh. Sử dụng tên lớp, chúng ta có thể gọi phương thức của lớp từ các lớp khác.

```Dart
void main() {
  var age = 18;
  const PI = 3.14;
  const myName = "Duc";
  final hoursSinceMidnight = DateTime.now().hour;
}
```

## Các kiểu dữ liệu trong Dart
### 1. String
- Kiểu dữ liệu String sử dụng để biểu diễn chuỗi ký tự Unicode(UTF-16) (bạn có thể sử dụng các xâu có kí tự tiếng Việt hoặc bất cứ thứ tiếng nào mà sử dụng được với mã Unicode).

```Dart
void main(List<String> args) {
  // Dùng nháy đơn hay kép đều được
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";
}
```
- Một số phương thức cơ bản

```Dart
void main(List<String> args) {

  /// Có thể sử dụng nháy đơn '' hoặc nháy kép "" để khai báo 1 string
  String s = 'Hello world ';
  String s1 = "Hello world";
  
  /// Tách kí tự trong 1 chuỗi
  List<String> splittedStrs = s.split(" ");
  print("splittedStrs -> $splittedStrs"); // sẽ in ra: splittedStrs -> [Hello,world]

  /// kiểm tra 1 string có chứa 1 string khác không
  bool hasWorldStr = s.contains("world");
  print("hasWorldStr -> $hasWorldStr"); // sẽ in ra: hasWorldStr -> true

  /// chuyển đổi tất cả kí tự về kí tự viết hoa, viết thường
  String sUpperCase = s.toUpperCase();
  String sLowerCase = s.toLowerCase();
  print("sUpperCase -> $sUpperCase"); // sẽ in ra: sUpperCase -> HELLO WORLD
  print("sLowerCase -> $sLowerCase"); // sẽ in ra: sLowerCase -> hello world

  /// lấy vị trí đầu tiên của kí tự 'o'
  int sIndexOf = s.indexOf("o");
  print("sIndexOf -> $sIndexOf"); // sẽ in ra: sIndexOf -> 4

  /// kiểm tra xem string bắt đầu với kí tự 'H'
  bool sStartWith = s.startsWith("H");
  print("sStartWith -> $sStartWith"); // sẽ in ra: sStartWith -> true

  /// thay thế các kí tự trong 1 chuỗi
  String sReplaced = s.replaceAll("world", "everyone");
  print("sReplaced -> $sReplaced"); // sẽ in ra: sReplaced -> Hello everyone

  /// loại bỏ khoảng trắng ở đầu/cuối string
  String sTrimmed = s.trim();
  print("s -> \"$s\""); // sẽ in ra: s -> "Hello world "
  print("sTrimmed -> $sTrimmed"); // sẽ in ra: sTrimmed -> Hello world
}
```

### 2. Number
- **Int:** Là kiểu số nguyên như bao nhiêu ngôn ngữ khác. Ngoài ra Dart có còn BigInt để làm việc với các kiểu số nguyên lớn
- **Double:** double là kiểu số thực. Các phiên bản cũ của Dart thì kiểu số thực bắt buộc phải có dấu `.` ví dụ để khai báo biến số thực a có giá trị 10 chúng ta phải viết rõ double a = 10.0 Tuy nhiên các phiên bản mới hiện nay đã bỏ phần dấu `.` này đi, bạn có thể khai báo double a = 10

```Dart
void main(List<String> args) {
  /// int là kiểu dữ liệu lưu trữ số nguyên
  int a = 10;
  int b = -10;

  /// double là kiểu dữ liệu lưu trữ số thực
  /// có thể khai báo có hoặc không có dấu chấm
  double c = 10;
  double d = -10.0;

  print("a = $a"); // sẽ in ra: a = 10
  print("b = $b"); // sẽ in ra: b = -10
  print("c = $c"); // sẽ in ra: c = 10.0
  print("d = $d"); // sẽ in ra: d = -10.0
}
```

- Một số phương thức cơ bản

```Dart
void numberMethod(int a, int b, double c, double d, String e) {
  //// Chuyển đổi từ int, double sang string
  String _aStr = a.toString();
  String _bStr = b.toString();
  print("int a toString: $_aStr"); // sẽ in ra: int a toString: 10
  print("double b toString: $_bStr"); // sẽ in ra: double b toString: -10.0

  /// Chuyển đổi từ string sang int, double
  int _cInt = int.parse(e);
  double _cDouble = double.parse(e);
  print("Parse String e to int: $_cInt"); // sẽ in ra: Parse String c to int: 20
  print("Parse String e to double: $_cDouble"); // sẽ in ra: Parse String c to double: 20.0

  /// Chuyển đổi từ int sang double
  /// Lưu ý: Khi chuyển đổi từ int sang double, phần thập phân sẽ là 0
  double _aDouble = a.toDouble();
  print("int a toDouble: $_aDouble"); // sẽ in ra: int a toDouble: 10.0

  /// Chuyển đổi từ double sang int
  /// Lưu ý: Khi chuyển đổi từ double sang int, phần thập phân sẽ bị bỏ đi
  int _bInt = c.toInt();
  print("double c toInt: $_bInt"); // sẽ in ra: double b toDouble: -10
}
```

### 3. Bool
- Kiểu dữ liệu bool trong Dart có 2 giá trị là true (đúng) và false (sai) được sử dụng để thể hiện kết quả của một mệnh đề logic (các phép toán so sánh, kiểm tra, các hàm...)

```Dart
void main() {
  /// bool là kiểu dữ liệu lưu trữ giá trị đúng/sai
  bool e = true;
  bool f = false;

  /// các viết tắt khi so sánh bool == true
  if (e) {
    print("e is $e"); // sẽ in ra: e is true
  }

  /// viết đầy đủ khi so sánh bool == true
  if (e == true) {
    print("e == true"); // sẽ in ra: e == true
  }

  /// so sánh bool == false
  if (!f) {
    print("f is $f"); // sẽ in ra: f is false
  }

  /// so sánh nhiều mệnh đề
  if (e && !f) {
    print("f == true and f == false"); // sẽ in ra: e == true and f == false
  }

  /// so sánh nhiều mệnh đề
  if (e || f) {
    print("e == true or f == true"); // sẽ in ra: e == true and f == false
  }
}
```
### 4. Array
- Kiểu dữ liệu array (List) trong Dart được sử dụng để biểu diễn cho một tập hợp các đối tượng theo một thứ tự nhất định. và List trong Dart tương tự như Array ở trong các ngôn ngữ khác.

```Dart
void main() {
  /// List là kiểu dữ liệu lưu trữ 1 mảng dữ liệu
  /// Khai báo List sử dụng []
  List strs = ["a", "b", "c"];
  print("strs -> $strs"); // sẽ in ra: strs -> [a, b, c]

  /// Khai báo list sử dụng List<type>[]
  List<String> strs_1 = <String>["a", "b", "c"];
  print("strs_1 -> $strs_1"); // sẽ in ra: strs_1 -> [a, b, c]
}
```
- Một số phương thức cơ bản

```Dart
void arrayMethod(List strs, List strs_1, List strs_2) {
  strs.add("d");
  print("strs after adding \"d\" -> $strs");

  // sẽ in ra: strs after adding "d" -> [a, b, c, d]
  strs.remove("d");
  print("strs after removing \"d\" -> " + strs.toString());  // sẽ in ra: strs_1 after adding "d" -> [a, b, c, d]
 
  /// đoạn code trên, nhưng sử dụng [Builder Design Pattern] để viết code ngắn gọn hơn
  print("strs after adding \"d\" then remove \"d\" -> ${strs..add("d")..remove("d")}"); /// Sẽ in ra: strs after adding "d" then remove "d" -> [a, b, c]

  /// Thêm 1 array vào 1 array có sẵn
  strs_1.addAll(strs_2);
  print("strs_1 after addAll str_2 -> $strs_1"); // strs_1 after addAll str_2 -> [a, b, c, d, e, f]

  /// Tách phần tử từ một mảng sử dụng List.sublist(int start, int? end)
  /// Sẽ trả về sublist với điều kiện 0 <= start <= end <= list.length
  /// Tách phần tử từ 1 đến 3 
  print("strs_1_subList -> ${strs_1.sublist(2, 4)}"); // sẽ in ra: strs_1_subList -> [c, d]

  /// Lấy phần tử tại vị trí index trong mảng
  String strByIndex = strs_1[0];
  print("strByIndex -> $strByIndex"); // _strByIndex -> a

  /// Tìm kiếm phần tử trong mảng
  /// Sử dụng List.indexOf(Object element) để tìm kiếm phần tử trong mảng
  /// Sẽ trả về vị trí đầu tiên của phần tử trong mảng, nếu không tìm thấy sẽ trả về -1
  /// Tìm vị trí của phần tử "c" trong mảng strs_1
  print("strs_1 indexOf \"c\" -> ${strs_1.indexOf("c")}"); // sẽ in ra: strs_1 indexOf "c" -> 2
}
```

### 5. Map
- Kiểu dữ liệu map trong dart là một đối tượng lưu trữ dữ liệu dưới dạng một cặp khóa-giá trị (key - value). Mỗi giá trị được liên kết với khóa của nó và nó được sử dụng để truy cập giá trị tương ứng của nó. Cả khóa và giá trị đều có thể là bất kỳ loại nào

```Dart
void main() {
  /// cách viết ngắn gọn
  Map map = {"key": "value"};
  print("map -> $map"); // sẽ in ra: map -> {key: value}

  /// cách viết rõ nghĩa
  Map<String, String> map1 = Map<String, String>();
  map1["key"] = "value";
  print("map1 -> $map1"); // sẽ in ra: map1 -> {key: value}
}
```

- Một số phương thức cơ bản

```Dart
void mapMethod(Map map1) {
  /// Map.from(Map) để tạo ra một Map mới từ một Map đã có
  Map<String, String> map2 = Map.from(map1);
  print("map2 -> $map2"); // sẽ in ra: map2 -> {key: value}

  /// keys.first -> lấy ra key đầu tiên của map
  String key = map1.keys.first;
  print("key from map1 -> $key"); // key from map1 -> key

  /// values.first -> lấy ra value đầu tiên của map
  String value = map1.values.first;
  print("value from map1 -> $value"); // value from map1 -> value

  /// addAll(Map) để thêm tất cả các phần tử từ một Map khác vào Map hiện tại
  Map map12 = map1..addAll(map2);
  print("map12 -> $map12"); // sẽ in ra: map12 -> {key: value}
}
```
{{< notice note >}}
Trong map key phải là duy nhất, nếu trùng thì giá trị mới sẽ ghi đè lên giá trị cũ
{{< /notice >}}

### 6. Dynamic
- Dynamic đúng như cái tên của nó là kiểu dữ liệu động hay nói cách khác là chấp nhận mọi kiểu dữ liệu

```Dart
dynamic myVariable = 42; // Kiểu int
myVariable = "hello"; // lúc này là kiểu string
```

- Hoặc có thể dùng var nhưng không khởi tạo giá trị thì lúc này kiểu dữ liệu mặc định sẽ là dynamic

```Dart
var myName;
myName = "Nick"; // lúc này là kiểu string
nyName = 42 // lúc này là kiểu int
```

## Nguồn tham khảo
- Bài viết được tham khảo từ tài liệu của đồng nghiệp
- Series và Dart và Flutter của [fxstudio](https://fxstudio.dev/category/code/flutter-dart/)