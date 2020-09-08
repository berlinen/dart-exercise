## 类变量和方法

使用 static 关键字实现类范围的变量和方法。

### 静态变量

静态变量（类变量）对于类级别的状态是非常有用的：

```dart
class Queue {
  static const initialCapacity = 16;
  // ···
}

void main() {
  assert(Queue.initialCapacity == 16);
}

```

静态变量只到它们被使用的时候才会初始化。

代码准守风格推荐指南 中的命名规则， 使用 lowerCamelCase 来命名常量。

### 静态方法

静态方法（类方法）不能在实例上使用，因此它们不能访问 this 。 例如：

```dart
import 'dart:math';

class Point {
  num x, y;
  Point(this.x, this.y);

  static num distanceBetween(Point a, Point b) {
    var dx = a.x - b.x;
    var dy = a.y - b.y;
    return sqrt(dx * dx + dy * dy);
  }
}

void main() {
  var a = Point(2, 2);
  var b = Point(4, 4);
  var distance = Point.distanceBetween(a, b);
  assert(2.8 < distance && distance < 2.9);
  print(distance);
}
```

提示： 对于常见或广泛使用的工具和函数， 应该考虑使用顶级函数而不是静态方法。






