## 枚举类型

枚举类型也称为 enumerations 或 enums ， 是一种特殊的类，用于表示数量固定的常量值。

### 使用枚举

使用 enum 关键字定义一个枚举类型：

```dart
enum Color { red, green, blue }
```

枚举中的每个值都有一个 index getter 方法， 该方法返回值所在枚举类型定义中的位置（从 0 开始）。 例如，第一个枚举值的索引是 0 ， 第二个枚举值的索引是 1。

```dart
assert(Color.red.index == 0);
assert(Color.green.index == 1);
assert(Color.blue.index == 2);
```

使用枚举的 values 常量， 获取所有枚举值列表（ list ）。

```dart
List<Color> colors = Color.values;
assert(colors[2] == Color.blue);
```

可以在 switch 语句 中使用枚举， 如果不处理所有枚举值，会收到警告：

```dart
var aColor = Color.blue;

switch (aColor) {
  case Color.red:
    print('Red as roses!');
    break;
  case Color.green:
    print('Green as grass!');
    break;
  default: // 没有这个，会看到一个警告。
    print(aColor); // 'Color.blue'
}
```

枚举类型具有以下限制：

枚举不能被子类化，混合或实现。

枚举不能被显式实例化。

