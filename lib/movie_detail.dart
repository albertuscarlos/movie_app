import 'package:flutter/material.dart';
import 'package:movie_app/models/movie_models.dart';
import 'package:movie_app/widgets/movie_detail_mobile_big.dart';
import 'package:movie_app/widgets/movie_detail_mobile_small.dart';
import 'package:movie_app/widgets/movie_detail_web.dart';

class MovieDetail extends StatefulWidget {
  const MovieDetail({
    super.key,
    required this.poster,
    required this.voteAverage,
    required this.voteCount,
    required this.popularity,
    required this.title,
    required this.releaseDate,
    required this.overview,
    required this.actors,
    required this.backdrop,
  });
  final String poster;
  final String backdrop;
  final double voteAverage;
  final int voteCount;
  final double popularity;
  final String title;
  final String releaseDate;
  final String overview;
  final List<ActorModels> actors;

  @override
  State<MovieDetail> createState() => _MovieDetailState();
}

class _MovieDetailState extends State<MovieDetail> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxHeight <= 850) {
              if (constraints.maxWidth < 600) {
                return MovieDetailMobileSmall(
                  poster: widget.poster,
                  voteAverage: widget.voteAverage,
                  voteCount: widget.voteCount,
                  popularity: widget.popularity,
                  title: widget.title,
                  releaseDate: widget.releaseDate,
                  overview: widget.overview,
                  actors: widget.actors,
                );
              } else {
                return MovieDetailWeb(
                  poster: widget.poster,
                  voteAverage: widget.voteAverage,
                  voteCount: widget.voteCount,
                  popularity: widget.popularity,
                  title: widget.title,
                  releaseDate: widget.releaseDate,
                  overview: widget.overview,
                  actors: widget.actors,
                  backdrop: widget.backdrop,
                );
              }
            } else {
              return MovieDetailMobileBig(
                poster: widget.poster,
                voteAverage: widget.voteAverage,
                voteCount: widget.voteCount,
                popularity: widget.popularity,
                title: widget.title,
                releaseDate: widget.releaseDate,
                overview: widget.overview,
                actors: widget.actors,
              );
            }
          },
        ),
      ),
    );
  }
}
