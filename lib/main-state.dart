import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final String data = '12345673';
  @override
  Widget build(BuildContext context) {
    return Provider<String>(
      builder: (context) => data,
      child: MaterialApp(
          home: Scaffold(
        appBar: AppBar(
          title: Text(data),
        ),
        body: Level1(),
      )),
    );
  }
}

class Level1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Level2(),
    );
  }
}

class Level2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(),
        Level3(),
      ],
    );
  }
}

class Level3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // return Text(Provider.of<String>(context));
    return Text(Provider.of<String>(context));
  }
}
