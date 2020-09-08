## 为类添加功能： Mixin

Mixin 是复用类代码的一种途径， 复用的类可以在不同层级，之间可以不存在继承关系。

通过 with 后面跟一个或多个混入的名称，来 使用 Mixin ， 下面的示例演示了两个使用 Mixin 的类：

```dart
class Musician extends Performer with Musical {
  // ···
}

class Maestro extends Person with Musical, Aggressive, Demented {
  Maestro(String maestroName) {
    name = maestroName;
    canConduct = true;
  }
}
```

通过创建一个继承自 Object 且没有构造函数的类，来 实现 一个 Mixin 。 如果 Mixin 不希望作为常规类被使用，使用关键字 mixin 替换 class 。 例如：

```dart
mixin Musical {
  bool canPlayPiano = false;
  bool canCompose = false;
  bool canConduct = false;

  void entertainMe() {
    if (canPlayPiano) {
      print('Playing piano');
    } else if (canConduct) {
      print('Waving hands');
    } else {
      print('Humming to self');
    }
  }
}
```

指定只有某些类型可以使用的 Mixin - 比如， Mixin 可以调用 Mixin 自身没有定义的方法 - 使用 on 来指定可以使用 Mixin 的父类类型：

```dart
mixin MusicalPerformer on Musician {
  // ···
}
```