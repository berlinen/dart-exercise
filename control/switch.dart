// 在 Dart 中 switch 语句使用 == 比较整数，字符串，或者编译时常量。 比较的对象必须都是同一个类的实例（并且不可以是子类）， 类必须没有对 == 重写。 枚举类型 可以用于 switch 语句。

// 在 case 语句中，每个非空的 case 语句结尾需要跟一个 break 语句。 除 break 以外，还有可以使用 continue, throw，者 return。

// 当没有 case 语句匹配时，执行 default 代码：

void demo () {
  var command = 'OPEN';
  switch (command) {
    // case 'CLOSED':
    //   executeClosed();
    //   break;
    // case 'PENDING':
    //   executePending();
    //   break;
    // case 'APPROVED':
    //   executeApproved();
    //   break;
    // case 'DENIED':
    //   executeDenied();
    //   break;
    // case 'OPEN':
    //   executeOpen();
    //   break;
    // default:
    //   executeUnknown();
  }

  // 下面的 case 程序示例中缺省了 break 语句，导致错误：

  switch (command) {
    // case 'OPEN':
    //   executeOpen();
    //   // ERROR: 丢失 break

    // case 'CLOSED':
    //   executeClosed();
    //   break;
  }

  // 但是， Dart 支持空 case 语句， 允许程序以 fall-through 的形式执行。


  switch (command) {
    // case 'CLOSED': // Empty case falls through.
    // case 'NOW_CLOSED':
    //   // Runs for both CLOSED and NOW_CLOSED.
    //   executeNowClosed();
    //   break;
  }

  // 在非空 case 中实现 fall-through 形式， 可以使用 continue 语句结合 lable 的方式实现:

  switch (command) {
    // case 'CLOSED':
    //   executeClosed();
    //   continue nowClosed;
    // // Continues executing at the nowClosed label.

    // nowClosed:
    // case 'NOW_CLOSED':
    //   // Runs for both CLOSED and NOW_CLOSED.
    //   executeNowClosed();
    //   break;
  }

  // case 语句可以拥有局部变量， 这些局部变量只能在这个语句的作用域中可见。


}