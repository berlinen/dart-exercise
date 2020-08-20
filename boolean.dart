// boolean 编译时常量

void printBoolean () {
  // 检查空字符串
  var fullname = '';
  print(fullname.isEmpty);

  // 检查0值
  var hitPoints = 0;
  print(hitPoints <= 0);

  // 检查 null 值。
  var unicorn;
  print(unicorn == null);

  // 检查 NaN 。
  var iMeantToDoThis = 0 / 0;
  print(iMeantToDoThis.isNaN);
}

void main () {
  printBoolean();
}