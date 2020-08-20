void printNumber () {
  // string -> int
  var one = int.parse('1');
  print(one == 1);

  // string -> double
  var onePointOne = double.parse('1.1');
  print(onePointOne == 1.1); s

  // int -> string
  Strint oneAssString = 1.toString();
  print(oneAsString == '1');

  // double -> string
  String piAsString = 3.14159.toStringAsFixed(2);
  print(piAsString == '3.14159');

}

void main () {
  printNumber();
}

StreamBuilder<dynamic>(
  stream: yourStream,
  builder: (BuildContext context, AsyncSnapshot<dynamic> snapshot) {
      if (snapshot.hasData) {
       // TODO: do something with the data
       return Container();
      } else if (snapshot.hasError) {
      // TODO: do something with the error
       return Text(snapshot.error.toString());
      }
      // TODO: the data is not ready, show a loading indicator
      return Center(child: CircularProgressIndicator());
   },
)