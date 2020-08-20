// 一个 Symbol 对象表示 Dart 程序中声明的运算符或者标识符。

// 你也许永远都不需要使用 Symbol ，但要按名称引用标识符的 API 时， Symbol 就非常有用了。

// 因为代码压缩后会改变标识符的名称，但不会改变标识符的符号。

// 通过字面量 Symbol ，也就是标识符前面添加一个 # 号，来获取标识符的 Symbol 。

// Symbol 字面量是编译时常量。

void main(List<String> args) {
  #radix;
  #barx;
  print('this is ${#radix}'); // this iss Symbol("radix")
  print(#barx); // Symbol("barx")
}