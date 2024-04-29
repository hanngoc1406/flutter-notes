void main(List<String> args) {
  /// String là kiểu dữ liệu lưu trữ chuỗi kí tự
  /// Có thể khai báo sử dụng nháy đơn '' hoặc nháy kép "" để khai báo 1 string
  var s1 = 'Single quotes work well for string literals.';
  var s2 = "Double quotes work just as well.";
  var s3 = 'It\'s easy to escape the string delimiter.';
  var s4 = "It's even easier to use the other delimiter.";

  print(s1); // sẽ in ra: Single quotes work well for string literals.`)

  StringMethod('Hello world ');

  /// int là kiểu dữ liệu lưu trữ số nguyên
  int a = 10;
  int b = -10;

  /// double là kiểu dữ liệu lưu trữ số thực
  double c = 10;
  double d = -10.0;

  print("a = $a"); // sẽ in ra: a = 10
  print("b = $b"); // sẽ in ra: b = -10
  print("c = $c"); // sẽ in ra: c = 10.0
  print("d = $d"); // sẽ in ra: d = -10.0

  numberMethod(a, b, c, d, "20");

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

  /// List là kiểu dữ liệu lưu trữ 1 mảng dữ liệu
  /// Khai báo List sử dụng []
  List strs = ["a", "b", "c"];
  print("strs -> $strs"); // sẽ in ra: strs -> [a, b, c]

  /// Khai báo list sử dụng List<type>[]
  List<String> strs_1 = <String>["a", "b", "c"];
  print("strs_1 -> $strs_1"); // sẽ in ra: strs_1 -> [a, b, c]

  List<String> strs_2 = ["d", "e", "f"];

  arrayMethod(strs, strs_1, strs_2);

  /// Kiểu là một đối tượng lưu trữ dữ liệu dưới dạng một cặp khóa-giá trị (key - value)
  /// Trong map key phải là duy nhất, nếu trùng thì giá trị mới sẽ ghi đè lên giá trị cũ
  /// cách viết ngắn gọn
  Map map = {"key": "value"};
  print("map -> $map"); // sẽ in ra: map -> {key: value}

  /// Cách viết rõ nghĩa
  Map<String, String> map1 = Map<String, String>();
  map1["key"] = "value";
  print("map1 -> $map1"); // sẽ in ra: map1 -> {key: value}

  mapMethod(map1);

  /// const và final là 2 từ khóa dùng để khai báo hằng số
  const myName = "Phan Duc";

  print(myName); // sẽ in ra: Phan Duc
}

void StringMethod(String s) {
  /// Tách kí tự trong 1 chuỗi
  List<String> splittedStrs = s.split(" ");
  // sẽ in ra: splittedStrs -> [Hello, world, ]
  print("splittedStrs -> $splittedStrs");

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
  print(
      "Parse String e to double: $_cDouble"); // sẽ in ra: Parse String c to double: 20.0

  /// Chuyển đổi từ int sang double
  /// Lưu ý: Khi chuyển đổi từ int sang double, phần thập phân sẽ là 0
  double _aDouble = a.toDouble();
  print("int a toDouble: $_aDouble"); // sẽ in ra: int a toDouble: 10.0

  /// Chuyển đổi từ double sang int
  /// Lưu ý: Khi chuyển đổi từ double sang int, phần thập phân sẽ bị bỏ đi
  int _bInt = c.toInt();
  print("double c toInt: $_bInt"); // sẽ in ra: double b toDouble: -10
}

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