// 条件表达式

// Dart有两个运算符，有时可以替换 if-else 表达式， 让表达式更简洁：

// condition ? expr1 : expr2

// 如果条件为 true, 执行 expr1 (并返回它的值)： 否则, 执行并返回 expr2 的值。

// expr1 ?? expr2

// 如果 expr1 是 non-null， 返回 expr1 的值； 否则, 执行并返回 expr2 的值。

// 下面给出了其他两种实现方式， 但并不简洁：

String playerNamea (String name) => name ?? 'guest';

String playerNameb (String name) => name != null ? name : 'guest';

String playerNamec (String name) {
  if (name != null) {
    return name;
  } else {
    return 'Guest';
  }
}

void main(List<String> args) {
  var res = null ?? 'hello dart';
  print('the result is ${res}'); // the result is hello dart

  // 如果赋值是根据布尔值， 考虑使用 ?:。
  var res1 = 3 > 2 ? 'true res' : 'false res';
  print('the result1 is ${res1}');

  // 如果赋值是基于判定是否为 null， 考虑使用 ??。
  String playerName(String name) => name ?? 'Guest';
  print('the playername is ${playerName('lucy')}');

  print('the playernamea is ${playerNamea(null)}');
  print('the playernameb is ${playerNameb(null)}');
  print('the playernamec is ${playerNamec(null)}');
  // -----------------------------------------------
  print('the playernamea is ${playerNamea('a')}');
  print('the playernameb is ${playerNameb('b')}');
  print('the playernamec is ${playerNamec('c')}');

}