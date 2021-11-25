import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController n1Controller = TextEditingController();
  TextEditingController n2Controller = TextEditingController();

  String infoResultado = "Classificação";

  void _calcularSoma() {
    setState(() {
      double peso = double.parse(n1Controller.text);
      double altura = double.parse(n2Controller.text);

      double imc = peso / (altura * altura);
      String classification = '';

      if(imc < 18.5) {
        classification = 'Abaixo do peso';
      } else if(imc >= 18.5 || imc <= 24.9) {
        classification = 'Peso normal';
      } else if(imc >= 25 || imc <= 29.9) {
        classification = 'Sobre peso';
      } else if(imc >= 30 || imc <= 34.9) {
        classification = 'Obesidade grau I';
      } else if(imc >= 35 || imc <= 39.9) {
        classification = 'Obesidade grau II';
      } else {
        classification = 'Obesidade grau III';
      }

      infoResultado = 'Resultado: $classification';
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
      title: Text("Somador de Números"),
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
          _foto(),
          _campo("Peso", n1Controller),
          _campo("Altura", n2Controller),
          _botao(),
          _texto(infoResultado),
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

  _botao() {
    return Padding(
      padding: EdgeInsets.only(top: 20.0, bottom: 20.0),
      child: Container(
        height: 50.0,
        child: RaisedButton(
          onPressed: _calcularSoma,
          child: Text("Verificar",
              style: TextStyle(color: Colors.white, fontSize: 20.0)),
          color: Colors.blue,
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

  _foto() {
    return Center(
      child: Image.network(
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSqA-WRtPt1yrbml-f3_QT5BZppvU4LBlZOzA&usqp=CAU',
        height: 200,
        width: 300,
      ),
    );
  }

}
