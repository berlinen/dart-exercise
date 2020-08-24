// 匿名函数

// 匿名函数可以赋值到一个变量中， 举个例子，在一个集合中可以添加或者删除一个匿名函数。

// 匿名函数和命名函数看起来类似— 在括号之间可以定义一些参数或可选参数，参数使用逗号分割。

// 后面大括号中的代码为函数体：

// ([[Type] param1[, ...]]) {
//   codeBlock()
// }

// 下面例子中定义了一个包含一个无类型参数 item 的匿名函数

// list 中的每个元素都会调用这个函数，打印元素位置和值的字符串。

void item() {
  List<String> list = ['apples', 'bananas', 'oranges'];

  list.forEach((String item) {
    print('${list.indexOf(item)}: $item');
  });
}

void main() {
  item();
}
