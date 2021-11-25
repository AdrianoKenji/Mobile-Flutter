import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int resultado = 0;
  String infoResultado = "";


  void somar() {
    setState(() {
      resultado++;
      infoResultado = '$resultado';
    });
  }

  void subtrair() {
    setState(() {
      resultado--;
      infoResultado = '$resultado';
    });
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _titulo(),
      backgroundColor: Colors.white,
      body: _corpo(),
    );
  }

  _titulo() {
    return AppBar(
      title: Text("Contador de Pessoas"),
      centerTitle: true,
      backgroundColor: Colors.green,
    );
  }

  _corpo() {
    return SingleChildScrollView(
      padding: EdgeInsets.fromLTRB(10.0, 0, 10.0, 0.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          _texto(infoResultado),
          _botaoSomar(),
          _botaoSubtrair(),
        ],
      ),
    );
  }

  _campo(labelTitulo, objController) {
    return TextField(
      keyboardType: TextInputType.number,
      decoration: InputDecoration(
          labelText: labelTitulo, labelStyle: TextStyle(color: Colors.green)),
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.green, fontSize: 25.0),
      controller: objController,
    );
  }

  _botaoSomar() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 25.0,
        child: RaisedButton(
          onPressed: somar,
          child: Text("+",
              style: TextStyle(color: Colors.white, fontSize: 30.0)),
          color: Colors.green,
        ),
      ),
    );
  }

  _botaoSubtrair() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 25.0,
        child: RaisedButton(
          onPressed: subtrair,
          child: Text("-",
              style: TextStyle(color: Colors.white, fontSize: 30.0)),
          color: Colors.red,
        ),
      ),
    );
  }

  _texto(textoParaExibir) {
    return Text(
      textoParaExibir,
      textAlign: TextAlign.center,
      style: TextStyle(color: Colors.red, fontSize: 25.0),
    );
  }
}
