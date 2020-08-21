void printNumber() {
  // string -> int
  var one = int.parse('1');
  print(one == 1);

  // string -> double
  var onePointOne = double.parse('1.1');
  print(onePointOne == 1.1);

  // int -> string
  String oneAsString = 1.toString();
  print(oneAsString == '1');

  // double -> string
  String piAsString = 3.14159.toStringAsFixed(2);
  print(piAsString == '3.14159');
}

// 数字类型是编译时常量 计算中 只要参与计算的因子是编译时常量 那么算术表达式的结果也是编译时常量
// example
void printCalc() {
  const msPerSecond = 1000;
  const secondsUnitRetry = 5;
  const msUntilRetry = secondsUnitRetry * msPerSecond;
  print('the result is $msUntilRetry');
}

void main() {
  printCalc();
}
