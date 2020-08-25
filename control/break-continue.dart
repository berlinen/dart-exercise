// break 和 continue

// 使用 break 停止程序循环：

// while (true) {
//   if (shutDownRequested()) break;
//   processIncomingRequests();
// }

// 使用 continue 跳转到下一次迭代：

// for (int i = 0; i < candidates.length; i++) {
//   var candidate = candidates[i];
//   if (candidate.yearsExperience < 5) {
//     continue;
//   }
//   candidate.interview();
// }

// 如果对象实现了 Iterable 接口 （例如，list 或者 set）。 那么上面示例完全可以用另一种方式来实现：

// candidates
//  .where((c) => c.yearsExperience >= 5)
//  .forEach((c) => c.interview());