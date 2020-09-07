## 获取对象的类型

使用对象的 runtimeType 属性， 可以在运行时获取对象的类型， runtimeType 属性回返回一个 Type 对象。

```dart
print('The type of a is ${a.runtimeType}');
```

到目前为止，我们已经解了如何_使用_类。 本节的其余部分将介绍如何_实现_一个类。

## 实例变量

下面是声明实例变量的示例：

```dart
class Point {
  num x; // 声明示例变量 x，初始值为 null 。
  num y; // 声明示例变量 y，初始值为 null 。
  num z = 0; // 声明示例变量 z，初始值为 0 。
}
```

未初始化实例变量的默认人值为 “null” 。

所有实例变量都生成隐式 getter 方法。 非 final 的实例变量同样会生成隐式 setter 方法。 有关更多信息，参考 Getters 和 setters.

```dart
class Point {
  num x;
  num y;
}

void main() {
  var point = Point();
  point.x = 4; // Use the setter method for x.
  assert(point.x == 4); // Use the getter method for x.
  assert(point.y == null); // Values default to null.
}
```

如果在声明时进行了示例变量的初始化， 那么初始化值会在示例创建时赋值给变量， 该赋值过程在构造函数及其初始化列表执行之前。

