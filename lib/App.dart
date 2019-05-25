import 'package:flutter/material.dart';
import 'MyContainer.dart';

class App extends StatefulWidget {
  final String text;

  App({this.text = 'Default text'});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _AppState();
  }
}

class _AppState extends State<App> {
  String text;

  @override
  void initState() {
    text = widget.text;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          appBarTheme: AppBarTheme(color: Colors.red)),
      home: Scaffold(
        appBar: AppBar(title: Text('Hi!'), actions: <Widget>[
          IconButton(
              icon: Icon(Icons.account_box),
              onPressed: () => setState(() {
                    text = "Account information";
                    print(text);
                  })),
          IconButton(
            icon: Icon(Icons.print),
            onPressed: () => setState(() {
                  text = "Printing Secvices";
                  print(text);
                }),
          )
        ]),body: MyContainer(text:text),
      ),
    );
  }
}
