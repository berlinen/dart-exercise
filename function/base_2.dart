// 下面演示了如何为位置参数设置默认值

String say(String from, String msg, [String device = 'ios', String mood]) {
  var result = '$from says $msg';
  if (device != null) {
    result = '$result with a $device';
  }
  if (mood != null) {
    result = '$result (in a $mood mood)';
  }
  print(result);
  return result;
}

// list 和 map 可以作为默认值传递，

void doStuff(
    {List<int> list = const [1, 2, 3],
    Map<String, String> gifts = const {'first': 'iphone', 'second': 'ipad', 'third': 'ipod'}}) {
  print('list: $list');
  print('gifts: $gifts');
}

void main(List<String> args) {
  say('wangwei', 'hello', null, 'fly');
  doStuff();
}
