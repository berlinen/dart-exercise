// 词法闭包

// 闭包 即一个函数对象，即使函数对象的调用在它原始作用域之外， 依然能够访问在它词法作用域内的变量。

// 函数可以封闭定义到它作用域内的变量。 接下来的示例中， makeAdder() 捕获了变量 addBy。 无论在什么时候执行返回函数，函数都会使用捕获的 addBy 变量。

// 返回一个函数，返回的函数参数与 [addBy] 相加。

Function makeAdder(num addBy) {
  print((num i) => addBy + i);
}

void main(List<String> args) {
  // 创建一个加 2 的函数。
  var add2 = makeAdder(2);

  // 创建一个加 4 的函数。
  var add4 = makeAdder(4);

  print('the result is $add2(2) == 4');
  print('the result is $add4(3) == 7');
}

