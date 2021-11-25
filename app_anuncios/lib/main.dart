import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: title(),
      backgroundColor: Colors.white,
      body: body(),
    );
  }

  title() {
    return AppBar(
      title: Text(
        'Anúncios',
        style: TextStyle(fontSize: 20, color: Colors.white),
      ),
      centerTitle: true,
      backgroundColor: Colors.blue,
    );
  }

  body() {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          carousel(),
        ],
      ),
    );
  }

  image(link) {
    return Image.network(
      link,
      width: 250,
      height: 250,
      fit: BoxFit.cover,
    );
  }

  carousel() {
    return Container(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 20),
      height: 400,
      child: ListView(
        children: <Widget>[
          pading(
              containerAd(
                  image(
                      'https://th.bing.com/th/id/OIP.c4dpAZdLML_aUv-4YKVDVgHaGD?w=259&h=212&c=7&r=0&o=5&pid=1.7'),
                  container(
                      pading(text('Teclado Gamer', 30.0, Colors.white), 0, 10,
                          0, 0),
                      pading(unavailable(), 0, 10, 0, 0))),
              30,
              0,
              0,
              30),
          pading(
              containerAd(
                  image(
                      'https://th.bing.com/th/id/OIP.zJtOyVXwqVSHzecZOMcWdQHaHa?pid=ImgDet&rs=1'),
                  container(
                      pading(text('Mouse Gamer', 30.0, Colors.white), 0, 10,
                          0, 0),
                      pading(unavailable(), 0, 10, 0, 0))),
              30,
              0,
              0,
              30),
          pading(
              containerAd(
                  image(
                      'https://th.bing.com/th/id/OIP.aEN_akh0neto6ccEFKWL-QHaHa?w=202&h=203&c=7&r=0&o=5&pid=1.7'),
                  container(
                      pading(text('Fone Gamer', 30.0, Colors.white), 0, 10,
                          0, 0),
                      pading(avaiable(), 0, 10, 0, 0))),
              30,
              0,
              0,
              30),
          pading(
              containerAd(
                  image(
                      'https://th.bing.com/th/id/OIP.-K4y19B6J3GDijiPaIp6wAHaFj?pid=ImgDet&rs=1'),
                  container(
                      pading(
                          text('Monitor 60hz', 30.0, Colors.white), 0, 10, 0, 0),
                      pading(avaiable(), 0, 10, 0, 0))),
              30,
              0,
              0,
              30),
          pading(
              containerAd(
                  image(
                      'https://th.bing.com/th/id/OIP.mz3OSkwuTh9m3ccuBp3H5AHaHa?w=219&h=219&c=7&r=0&o=5&pid=1.7'),
                  container(
                      pading(text('Cadeira Gamer', 30.0, Colors.white), 0,
                          10, 0, 0),
                      pading(unavailable(), 0, 10, 0, 0))),
              30,
              0,
              0,
              30),
          pading(
              containerAd(
                  image('https://th.bing.com/th/id/OIP.VVD-D8S6_59Aygc3fZ8KQwHaHa?w=219&h=219&c=7&r=0&o=5&pid=1.7'),
                  container(
                      pading(text('CPU Gamer', 30.0, Colors.white), 0,
                          10, 0, 0),
                      pading(avaiable(), 0, 10, 0, 0))),
              30,
              0,
              0,
              30),
        ],
        scrollDirection: Axis.horizontal,
      ),
    );
  }

  containerAd(context, content) {
    return Container(
        height: 300,
        width: 300,
        color: Colors.black,
        child: Column(children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(0, 20, 0, 0), child: context),
          content
        ]));
  }

  container(content, describe) {
    return Container(
      child: Column(
        children: <Widget>[content, describe],
      ),
    );
  }

  pading(content, double L, double T, double B, double R) {
    return Padding(padding: EdgeInsets.fromLTRB(L, T, R, B), child: content);
  }

  text(content, double size, color) {
    return Text(content, style: TextStyle(fontSize: size, color: color));
  }

  unavailable() {
    return text('Indisponivel', 30.0, Colors.red);
  }

  avaiable() {
    return text('Disponível', 30.0, Colors.blue);
  }
}