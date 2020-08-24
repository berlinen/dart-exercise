// 任何应用都必须有一个顶级 main() 函数，作为应用服务的入口。
// main() 函数返回值为空，参数为一个可选的 List<String> 。

// 下面是 web 应用的 main() 函数：

// import 'dart:html';

// .. 语法为 级联调用 （cascade） 使用级联调用， 可以简化在一个对象上执行的多个操作。

// void main() {
//   var reverseText;
//   querySelector('#sample_text_id')
//     ..text = 'click me!'
//     ..onClick.listen(reverseText);
// }

// 下面是一个命令行应用的 main() 方法，并且使用了输入参数：

// void main(List<String> arguments) {
//   print('arguments $arguments');

//   print(arguments.length == 2);
//   print(int.parse(arguments[0]) == 1);
//   print(arguments[1] == 'test');
// }

// 函数是一等对象
// 一个函数可作为另一个函数的参数

void printElement(int element) {
  print(element);
}

// 讲一个函数赋值给一个变量

var loudify = (msg) => '!!! ${msg.toUpperCase()} !!!';

void main(List<String> args) {
  var list = [1, 2, 3];

  // 将printElement 函数作为参数传递；
  list.forEach(printElement);
  print('the loudly result is ${loudify('hello') == '!!! HELLO !!!'}');
}

//
