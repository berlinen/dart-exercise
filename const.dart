printInteger(int aNumber) {
  print('this is aNumber $aNumber');
}

void main() {
  var number = 42;
  printInteger(number);
}

class name extends StatefulWidget {
  name({Key key}) : super(key: key);

  @override
  _nameState createState() => _nameState();
}

class _nameState extends State<name> {
  @override
  Widget build(BuildContext context) {
    return Container(
       child: child,
    );
  }
}