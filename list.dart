void printList() {
  var aList = [1, 2, 3];
  print(aList);
}

void printLista(List alist) {
  print('this is list $alist');
}

void printListb() {
  var list = [1, 2, 3];
  print(list.length == 3);
  print(list[1] == 2);

  list[1] = 1;
  print(list);
}

// 在 List 字面量之前添加 const 关键字，可以定义 List 类型的编译时常量：
var constantList = const [1, 2, 3];
//  constantList[1] = 1; // 取消注释会引起错误。

void main() {
  // var list = [2, 3, 4, 7];
  printListb();
  // printList();
}
