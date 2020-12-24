import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: PerubahanText(text: 'Hello World'),
      ),
    );
  }
}

class Heading extends StatelessWidget {
  final String text;

  Heading({Key key, this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: 24.0,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}

class PerubahanText extends StatefulWidget {
  final String text;

  PerubahanText({Key key, this.text}) : super(key: key);

  @override
  _PerubahanTextState createState() => _PerubahanTextState();
}

class _PerubahanTextState extends State<PerubahanText> {
  double _ukuranText = 16.0;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          widget.text,
          style: TextStyle(fontSize: _ukuranText),
        ),
        RaisedButton(
            child: Text('Perbesar'),
            onPressed: () {
              setState(() {
                _ukuranText = 32.0;
              });
            })
      ],
    );
  }
}
