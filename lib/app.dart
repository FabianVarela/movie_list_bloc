import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:movie_list_bloc/bloc/detail/credits/movie_credits_bloc.dart';
import 'package:movie_list_bloc/bloc/detail/trailers/movie_trailers_bloc.dart';
import 'package:movie_list_bloc/bloc/movie_list/movie_list_bloc.dart';
import 'package:movie_list_bloc/bloc/detail/movie/movie_bloc.dart';
import 'package:movie_list_bloc/dependency/locator.dart';
import 'package:movie_list_bloc/view/movie_list_view.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (_) => locator<MoviesBloc>()),
        BlocProvider(create: (_) => locator<MovieBloc>()),
        BlocProvider(create: (_) => locator<TrailersBloc>()),
        BlocProvider(create: (_) => locator<CreditsBloc>()),
      ],
      child: MaterialApp(
        title: 'Movie list',
        theme: ThemeData(
          textTheme: GoogleFonts.ubuntuTextTheme(
            Theme.of(context).textTheme,
          ),
        ),
        home: MovieList(),
      ),
    );
  }
}
