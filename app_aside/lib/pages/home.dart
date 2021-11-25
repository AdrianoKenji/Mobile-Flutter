import 'dart:html';
import 'dart:math';

import 'package:app_16/pages/experience.dart';
import 'package:app_16/pages/formation.dart';
import 'package:app_16/pages/personal.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _currentPage = 0;

  final screens = [
    Center(child: Text("Home")),
    Formation(),
    Experience(),
    Personal()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home"),
        centerTitle: true,
        backgroundColor: Colors.black87,
      ),
      backgroundColor: Colors.white,
      body: screens[_currentPage],
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
              accountName: Text('Adriano Kenji'),
              accountEmail: Text('adriano.augusto@fatec.sp.gov.br'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.black87,
                backgroundImage: NetworkImage(
                    'https://media-exp1.licdn.com/dms/image/C5103AQG3OO1x22rGrA/profile-displayphoto-shrink_200_200/0/1581094988617?e=1643241600&v=beta&t=NXExd6j-CR4vQQ_3ylYIalIKZOEUlzdHTusi-U4lklU'),
              ),
            ),
            ListTile(
              title: Text("Home"),
              onTap: () {
                setState(() {
                  _currentPage = 0;
                });
              },
            ),
            ListTile(
              title: Text("Formação"),
              onTap: () {
                setState(() {
                  _currentPage = 1;
                });
              },
            ),
            ListTile(
              title: Text("Experiência"),
              onTap: () {
                setState(() {
                  _currentPage = 2;
                });
              },
            ),
            ListTile(
              title: Text("Pessoal"),
              onTap: () {
                setState(() {
                  _currentPage = 3;
                });
              },
            )
          ],
        ),
      ),
    );
  }
}