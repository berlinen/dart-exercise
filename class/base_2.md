## 使用构造函数

通过 构造函数 创建对象。 构造函数的名字可以是 ClassName 或者 ClassName.identifier。例如， 以下代码使用 Point 和 Point.fromJson() 构造函数创建 Point 对象：

```dart
var p1 = Point(2, 2);
var p2 = Point.fromJson({'x': 1, 'y': 2});
```

以下代码具有相同的效果， 但是构造函数前面的的 new 关键字是可选的：

```dart
var p1 = new Point(2, 2);
var p2 = new Point.fromJson({'x': 1, 'y': 2});
```

:tip 版本提示： 在 Dart 2 中 new 关键字变成了可选的。

一些类提供了常量构造函数。 使用常量构造函数，在构造函数名之前加 const 关键字，来创建编译时常量时：

```dart
var p = const ImmutablePoint(2, 2);
```

构造两个相同的编译时常量会产生一个唯一的， 标准的实例：

```dart
var a = const ImmutablePoint(1, 1);
var b = const ImmutablePoint(1, 1);

assert(identical(a, b)); // 它们是同一个实例。
```

在 常量上下文 中， 构造函数或者字面量前的 const 可以省略。 例如，下面代码创建了一个 const 类型的 map 对象：

```dart
// 这里有很多的 const 关键字。
const pointAndLine = const {
  'point': const [const ImmutablePoint(0, 0)],
  'line': const [const ImmutablePoint(1, 10), const ImmutablePoint(-2, 11)],
};
```

保留第一个 const 关键字，其余的全部省略：

```dart
// 仅有一个 const ，由该 const 建立常量上下文。
const pointAndLine = {
  'point': [ImmutablePoint(0, 0)],
  'line': [ImmutablePoint(1, 10), ImmutablePoint(-2, 11)],
};
```

如果常量构造函数在常量上下文之外， 且省略了 const 关键字， 此时创建的对象是非常量对象：

```dart
var a = const ImmutablePoint(1, 1); // 创建一个常量对象
var b = ImmutablePoint(1, 1); // 创建一个非常量对象

assert(!identical(a, b)); // 两者不是同一个实例!
```

::: 在 Dart 2 中，一个常量上下文中的 const 关键字可以被省略。