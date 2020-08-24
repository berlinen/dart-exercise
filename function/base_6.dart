// 测试函数是否相等

// 下面是顶级函数，静态方法和示例方法相等性的测试示例：

void foo() {} //顶级函数

class A {
  static void bar() {} // 静态方法
  void baz() {}
}

void main() {
  var x;

  // 比较顶级函数
  x = foo;
  print('foo == x ? ${foo == x}');

  // 比较静态方法
  x = A.bar;
  print('x == a.bar ? ${A.bar == x}');

  // 比较实例方法。
  var v = A(); // A的1号实例
  var w = A(); // A的2号实例
  var y = w;
  x = w.baz;

  // 两个闭包引用的同一实例（2号）,
  // 所以它们相等。
  print('y.baz == x ?  ${y.baz == x}');

  // 两个闭包引用的非同一个实例，
  // 所以它们不相等。
  print('v.baz != w.baz ? ${v.baz != w.baz}');
}
