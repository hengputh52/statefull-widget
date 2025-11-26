import 'package:app/List,Pass,Fuction/EXERCISE-4/data/jokes.dart';
import 'package:app/List,Pass,Fuction/EXERCISE-4/ui/favorite_card.dart';
import 'package:flutter/material.dart';

class JokesListScreen extends StatefulWidget {
  const JokesListScreen({super.key});

  @override
  State<JokesListScreen> createState() => _JokesListScreenState();
}

class _JokesListScreenState extends State<JokesListScreen> {
  int? favoriteJokeId;

  void onFavoriteClick(int jokeId) {
    setState(() {
      if (favoriteJokeId == jokeId) {
        favoriteJokeId = null;
      } else {
        favoriteJokeId = jokeId;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        ...jokesList.map((joke) => FavoriteCard(
          joke: joke,
          isFavorite: favoriteJokeId == joke.id,
          onFavoriteClick: () => onFavoriteClick(joke.id),
        )),
      ],
    );
  }
}