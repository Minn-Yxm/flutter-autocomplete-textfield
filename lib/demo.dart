import 'package:autocomplete_textfield/autocomplete_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter BDTag Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
//        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<Widget> rows;

  List<String> editableRow;

  TextEditingController _controller;

  @override
  void initState() {
    super.initState();
    editableRow = ['标签一', '标签二', '标签三'];
    _controller = TextEditingController();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    ThemeData themeData = Theme.of(context);

    List<String> suggestions = [
      'aaa',
      'abb',
      'acc',
      'add',
      'aee',
      'aff',
      'agg',
      'ahh',
      'aii',
      'ajj',
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Byte Design BDTag Demo Page'),
      ),
      body: Center(
        child: SizedBox(
          width: 300,
          child: RawKeyboardListener(
            focusNode: FocusNode(),
            child: SimpleAutoCompleteTextField(
              key: GlobalKey(),
              suggestions: suggestions,
            ),

            onKey: (e){
              if(e.isKeyPressed(LogicalKeyboardKey.arrowDown)){

              }
            },
          )
        ),
      ),
    );
  }
}
