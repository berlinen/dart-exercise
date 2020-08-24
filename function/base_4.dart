// 词法作用域

// Dart 是一门词法作用域的编程语言，就意味着变量的作用域是固定的， 简单说变量的作用域在编写代码的时候就已经确定了。 花括号内的是变量可见的作用域。

// 下面示例关于多个嵌套函数的变量作用域：

void scope() {
  bool insideScope1 = true;

  void scope2() {
    var insideScope2 = true;

    void scope3() {
      var insideScope3 = true;

      void scope4() {
        var insideScope4 = true;

        print('insideScope1 $insideScope1');
        print('insideScope2 $insideScope2');
        print('insideScope3 $insideScope3');
        print('insideScope4 $insideScope4');
      }
    }
  }
}

void main(List<String> args) {
  scope();
}
