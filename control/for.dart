// for 循环

// 进行迭代操作，可以使用标准 for 语句。 例如：

void demo () {
  var message = StringBuffer('Dart is fun');
  for (var i = 0; i < 5; i++) {
    message.write('!');
    print('message $message');
  }
}

// 闭包在 Dart 的 for 循环中会捕获循环的 index 索引值， 来避免 JavaScript 中常见的陷阱。

void demo2() {
  List callbacks = [];
  for (var i = 0; i < 2; i++) {
    callbacks.add(() => print(i));
  }
  callbacks.forEach((c) => c());
}

void main(List<String> args) {
  demo2();
}