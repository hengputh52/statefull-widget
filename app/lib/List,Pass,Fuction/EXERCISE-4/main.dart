import 'package:app/List,Pass,Fuction/EXERCISE-4/data/jokes.dart';
import 'package:app/List,Pass,Fuction/EXERCISE-4/ui/joke_list.dart';
import 'package:flutter/material.dart';

Color appColor = Colors.green[300] as Color;


void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: appColor,
          title: const Text("Favorite Jokes"),
        ),
        body: JokesListScreen(),
    ),
  ),
);

