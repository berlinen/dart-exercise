// 在 Dart 中 Set 是一个元素唯一且无需的集合。

void printSeta(Set set) {
  var halogens = {'fluorine', 'chlorine', 'bromine', 'iodine', 'astatine'};
  print(halogens);
}

void printSetb() {
  var namea = <String>{'a', 'b'};
  Set<num> nameb = {1, 2};
  var boola = <bool>{false};
  Set<List<num>> lista = {
    [1, 2],
    [2, 3]
  };
  // var names = {} // 这样会创建一个Map，而不是set
  print(namea);
  print(nameb);
  print(boola);
  print(lista);
}

void printSetC() {
  var elements = <num>{};
  Set<num> numa = {3, 4, 5};
  elements.add(1);
  elements.add(2);
  elements.addAll(numa);

  print('this is elements $elements');
  print('this elements length ${elements.length}');
}

void setObj() {
  var seta = Set<num>();
  seta.add(1);

  Set<String> setb = {};
  setb.add('2');

  print('this is seta $seta');
  print('this is setb $setb');
}

// set const
void printSetD() {
  var set = const <String>{'a', 'b', 'c'};
  print('this is const set $set');
}

void main() {
  // printSeta();
  //printSetb();
  // printSetD();

  setObj();
}
