## 扩展类（继承）

使用 extends 关键字来创建子类， 使用 super 关键字来引用父类：

```dart
class Television {
  void turnOn() {
    _illuminateDisplay();
    _activateIrSensor();
  }
  // ···
}

class SmartTelevision extends Television {
  void turnOn() {
    super.turnOn();
    _bootNetworkInterface();
    _initializeMemory();
    _upgradeApps();
  }
  // ···
}

```

### 重写类成员

子类可以重写实例方法，getter 和 setter。 可以使用 @override 注解指出想要重写的成员：

```dart
class SmartTelevision extends Television {
  @override
  void turnOn() {...}
  // ···
}
```

下面示例演示一个类重写 + 和 - 操作符：

```dart
class Vector {
  final int x, y;

  Vector(this.x, this.y);

  Vector operator +(Vector v) => Vector(x + v.x, y + v.y);
  Vector operator -(Vector v) => Vector(x - v.x, y - v.y);

  // 运算符 == 和 hashCode 部分没有列出。 有关详情，请参考下面的注释。
  // ···
}

void main() {
  final v = Vector(2, 3);
  final w = Vector(2, 2);

  assert(v + w == Vector(4, 5));
  assert(v - w == Vector(0, 1));
}
```

### noSuchMethod()

当代码尝试使用不存在的方法或实例变量时， 通过重写 noSuchMethod() 方法，来实现检测和应对处理：

```dart
class A {
  // 如果不重写 noSuchMethod，访问
  // 不存在的实例变量时会导致 NoSuchMethodError 错误。
  @override
  void noSuchMethod(Invocation invocation) {
    print('You tried to use a non-existent member: ' +
        '${invocation.memberName}');
  }
}
```

除非符合下面的任意一项条件， 否则没有实现的方法不能够被调用：

receiver 具有 dynamic 的静态类型 。

receiver 具有静态类型，用于定义为实现的方法 (可以是抽象的), 并且 receiver 的动态类型具有 noSuchMethod() 的实现， 该实现与 Object 类中的实现不同。