import 'package:flutter/material.dart';
import 'package:movie_list_bloc/ui/movie_list.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Popular Movies'),
        ),
        body: MovieList(),
      ),
    );
  }
}
