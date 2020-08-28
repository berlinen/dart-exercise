## throw

下面是关于抛出或者 引发 异常的示例：

```dart
throw FormatException('Excepted ad least 1 section');
```

也可以抛出任意的对象：

```dart
throw 'out od llamas'
```

因为抛出异常是一个表达式， 所以可以在 => 语句中使用，也可以在其他使用表达式的地方抛出异常：

```dart
void distanceTo(Point other) => throw UnimplementedError();
```

catch

捕获异常可以避免异常继续传递（除非重新抛出（ rethrow ）异常）。 可以通过捕获异常的机会来处理该异常：

```dart
try {
  breedMoreLlamas()
} on OutOfLlamasException {
  buyMoreLamas()
}
```

通过指定多个 catch 语句，可以处理可能抛出多种类型异常的代码。 与抛出异常类型匹配的第一个 catch 语句处理异常。 如果 catch 语句未指定类型， 则该语句可以处理任何类型的抛出对象：
