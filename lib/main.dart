import 'package:flutter/material.dart';

void main() {
  runApp(new MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'first app',
      home: new HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String text = 'Hello world';
  void _changeText() {
    setState(() {
      if (text.startsWith("H")) {
        text = "Wellcome world";
      } else {
        text = "Hello world";
      }
    });
  }

  Widget _bodyWidget() {
    return new Container(
      padding: EdgeInsets.all(20),
      child: new Center(
        child: new Column(
          children: [
            new Text(text),
            // ignore: deprecated_member_use
            new RaisedButton(
              child: new Text('Change Text'),
              onPressed: _changeText,
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text('first app'),
      ),
      body: _bodyWidget(),
    );
  }
}
