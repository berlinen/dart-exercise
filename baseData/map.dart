// 通常来说， Map 是用来关联 keys 和 values 的对象。 keys 和 values 可以是任何类型的对象。在一个 Map 对象中一个 key 只能出现一次。

void printMapA() {
  //  Dart 会将 gifts 的类型推断为 Map<String, String>， nobleGases 的类型推断为 Map<int, String>

  var gifts = {'first': 'f', 'second': 's'};

  var nobleGases = {
    2: 'helium',
    10: 'neon',
    18: 'argon',
  };

  // List<String> lista = ['a', 'b'];

  // var listb = <num>[1, 2];

  print(gifts);
  print(nobleGases);
}

void mapobj() {
  var gifts = Map<String, String>();
  gifts['first'] = 'f';
  gifts['second'] = 's';

  Map<num, String> maps = Map();
  maps[1] = '1';
  maps[2] = '2';

  gifts['third'] = 't';

  print('this is gifts $gifts');
  print('this is maps $maps');
  print('this is gifts third ${gifts['third']}');
  print('this is gifts length ${gifts.length}');
}

void constMap() {
  const constMap = const <num, num>{
    1: 1,
  };

  print('this is const map $constMap');
}

void main(List<String> args) {
  // print('args $args');
  // printMapA();

  // mapobj();
  constMap();
}
