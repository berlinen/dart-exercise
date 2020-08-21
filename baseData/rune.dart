// 在 Dart 中， Rune 用来表示字符串中的 UTF-32 编码字符

main(List<String> args) {
  var clapping = '\u{1f44f}';
  print(clapping);
  print(clapping.codeUnits);
  print(clapping.runes.toList());

  Runes input = new Runes(
    '\u2665  \u{1f605}  \u{1f60e}  \u{1f47b}  \u{1f596}  \u{1f44d}'
  );

  print(new String.fromCharCodes(input));
}