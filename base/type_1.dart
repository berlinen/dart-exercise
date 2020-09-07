// 类型判定运算符

// as， is， 和 is! 运算符用于在运行时处理类型检查：

// 例如， obj is Object 总是 true。 但是只有 obj 实现了 T 的接口时， obj is T 才是 true。

// 使用 as 运算符将对象强制转换为特定类型。 通常，可以认为是 is 类型判定后，被判定对象调用函数的一种缩写形式。 请考虑以下代码：

// void demo () {
//   if (emp is Person) {
//     // Type check
//     emp.firstName = 'Bob';
//   }

//  (emp as Person).firstName = 'Bob';

//  // 以上代码并不是等价的。 如果 emp 为 null 或者不是 Person 对象， 那么第一个 is 的示例，后面将不回执行； 第二个 as 的示例会抛出异常。
// }