// Dart 是一门真正面向对象的语言， 甚至其中的函数也是对象，并且有它的类型 Function 。

// 这也意味着函数可以被赋值给变量或者作为参数传递给其他函数。

// example
// bool isNoble(int atomicNumber) {
//   return _nobleGases[atomicNumber] != null;
// }

// 简写
/**
 * 类似es6
 * => expr 语法是  return { expr } 箭头语法
 */
// bool simpleIsNoble(int atomicNumber) => __nobleGases[atomicNumber] != null;

/**
 * 2种参数类型
 * required 在参数最前边
 * optional 跟随required参数之后
 * 可选参数可以是命名参数或者位置参数，但一个参数只能选择其中一种方式修饰。
 */

/**
 * 命名可选参数
 * 调用函数时，可以使用指定命名参数 paramName: value。
 */

// 定义函数是，使用 {param1, param2, …} 来指定命名参数：

bool enableFlags ({bool bold, bool hidden}) {
  return bold && hidden;
}

// 使用 @required 注释表示参数是 required 性质的命名参数， 该方式可以在任何 Dart 代码中使用（不仅仅是Flutter）。

// 此时 Scrollbar 是一个构造函数， 当 child 参数缺少时，分析器会提示错误。

// const Scrollbar({Key key, @required Widget child})

/**
 * 位置可选参数
 * 将参数放到【】中标记参数是可选的
 */

String say(String from, String msg, [String device]){
  var result = '$from says $msg';
  if(device != null) {
    result = '$result with a $device';
  }
  return result;
}

// 默认参数值
/**
 * 在定义方法的时候，可以使用 = 来定义可选参数的默认值。
 * 默认值只能是编译时常量。
 * 如果没有提供默认值，则默认值为 null。
 */

void enableFlag({bool blod = false, bool hidden = false}) {
  print('the result is ${blod && hidden}');
}



// void main(List<String> args) {
//   // 调用函数
//   // print( 'enableFlags ${enableFlags(bold: true, hidden: false)}');
//   // print('the result is ${say('wangwei', 'hello', 'apple')}');
//   enableFlag(blod: false);
// }










