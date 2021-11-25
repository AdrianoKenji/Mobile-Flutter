import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.blue
      ),
      home: widgetHome(),
    );
  }
}

class widgetHome extends StatelessWidget {
  const widgetHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Hello Adriano"),
        centerTitle: true,
      ),
      body: Container(
        color: Colors.white,
        child: Center(
          child: Text("Hello Adriano!",
              style: TextStyle(
                fontSize: 40,
                color: Colors.blue,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                decoration: TextDecoration.lineThrough,
                //decoration: TextDecoration.overline,
                decorationColor: Colors.green,
                decorationStyle: TextDecorationStyle.double,
              )),
        ),
      ),
    );
  }
}

