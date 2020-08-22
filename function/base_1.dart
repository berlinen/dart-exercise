// Dart 是一门真正面向对象的语言， 甚至其中的函数也是对象，并且有它的类型 Function 。

// 这也意味着函数可以被赋值给变量或者作为参数传递给其他函数。

// example
bool isNoble(int atomicNumber) {
  return _nobleGases[atomicNumber] != null;
}

// 简写
/**
 * 类似es6
 * => expr 语法是  return { expr } 箭头语法
 */
bool simpleIsNoble(int atomicNumber) => __nobleGases[atomicNumber] != null;

/**
 * 2种参数类型
 * required 在参数最前边
 * optional 跟随required参数之后
 * 可选参数可以是命名参数或者位置参数，但一个参数只能选择其中一种方式修饰。
 */

// 命名可选参数








