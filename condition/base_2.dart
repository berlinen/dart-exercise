// 级联运算符 (..)

// 级联运算符 (..) 可以实现对同一个对像进行一系列的操作。 除了调用函数， 还可以访问同一对象上的字段属性。 这通常可以节省创建临时变量的步骤， 同时编写出更流畅的代码。

// 考虑一下代码：

// import 'dart:html';

// void base() {
//  querySelector('#confirm') // 获取对象。
//   ..text = 'Confirm' // 调用成员变量。
//   ..classes.add('important')
//   ..onClick.listen((e) => window.alert('Confirmed!'));
// }

// // 第一句调用函数 querySelector() ， 返回获取到的对象。 获取的对象依次执行级联运算符后面的代码， 代码执行后的返回值会被忽略。

// // 上面的代码等价于：

// void base1() {
//   var confirm = querySelector('#confirm'); // 获取对象。
//   confirm.text = 'Confirm';
//   confirm.classes.add('important');
//   confirm.onClick.listen((e) => window.alert('Confirmed'));
// }

// // 级联运算符可以嵌套，例如：

// final addressBook = (AddressBookBuilder()
//       ..name = 'jeny'
//       ..email = 'jeny@email.com'
//       ..phone = (PhoneNumberBuilder()
//                   ..number = '18761152485'
//                   ..label = 'home')
//                 .bulid())
//       .build();

// // 在返回对象的函数中谨慎使用级联操作符。 例如，下面的代码是错误的：

// // sb.write() 函数调用返回 void， 不能在 void 对象上创建级联操作。
// void returnValue () {
//   var sb = StringBuffer();
//   sb.write('foo')
//   ..write('bar'); // Error: 'void' 没有定义 'write' 函数。
// }

// // 严格的来讲， “两个点” 的级联语法不是一个运算符。 它只是一个 Dart 的特殊语法。

// void main(List<String> args) {
//   base();
// }