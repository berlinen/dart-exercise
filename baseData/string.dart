// Dart 字符串是一组 UTF-16 单元序列。

// 使用连续三个单引号或者三个双引号实现多行字符串对象的创建：

void printString () {
  var s1 ='''
      my name
      is
      berlin;
    ''';

  var s2 = r"In a raw string, even \n isn't special.";

  print(s2);
}

// 一个编译时常量的字面量字符串中，如果存在插值表达式，表达式内容也是编译时常量， 那么该字符串依旧是编译时常量。 插入的常量值类型可以是 null，数值，字符串或布尔值。

void printStrint2 () {
  // const 类型数据
  const aConstNum = 0;
  const aConstBool = true;
  const aConstString = 'a constant string';

  // const 类型数据
  var aNum = 0;
  var aBool = true;
  var aString = 'a string';
  const aConstList = [1, 2, 3, 4];

  const validConstString = '$aConstNum $aConstBool $aConstString'; // const 类型数据；
  // const invaildConstString = '$aNum $aBool $aString $aConstList'; // //非 const 类型数据

  print(validConstString);
  // print(invaildConstString);
}

void main () {
  printStrint2();
}
