import 'package:flutter/material.dart';
import 'package:movie_app/constants.dart';
import 'package:movie_app/models/movie_models.dart';
import 'package:movie_app/movie_detail.dart';
import 'package:movie_app/themes/themes.dart';
import 'package:movie_app/widgets/movie_grid_list.dart';
import 'package:movie_app/widgets/movie_vertical_lists.dart';

class MainMenu extends StatefulWidget {
  const MainMenu({super.key});

  @override
  State<MainMenu> createState() => _MainMenuState();
}

class _MainMenuState extends State<MainMenu> {
  int selectedGenre = 0;
  List<MovieModels> movies = nowPlayingMovies;
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'FilmKu',
                    style: TextStyle(
                        color: primaryElementsColor,
                        fontSize: 30,
                        fontFamily: 'Figtree',
                        fontWeight: FontWeight.bold),
                  ),
                  const Icon(
                    Icons.search,
                    color: Color(0xff12153D),
                    size: 30,
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                height: 50,
                child: ListView.separated(
                  itemCount: Constants.movieLists.length,
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemBuilder: (context, index) {
                    final movieLists = Constants.movieLists;
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGenre = index;
                        });
                        if (index == 0) {
                          movies = nowPlayingMovies;
                        } else if (index == 1) {
                          movies = upcomingMovies;
                        } else if (index == 2) {
                          movies = nowPlayingMovies;
                        } else if (index == 3) {
                          movies = upcomingMovies;
                        } else {
                          movies = nowPlayingMovies;
                        }
                      },
                      child: Column(
                        children: [
                          Text(
                            movieLists[index],
                            style: const TextStyle(
                              fontSize: 20,
                              fontFamily: 'Figtree',
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              border: Border.all(
                                color: selectedGenre == index
                                    ? secondaryElementsColor
                                    : Colors.transparent,
                                width: 3,
                              ),
                            ),
                            child: const SizedBox(
                              width: 30,
                            ),
                          )
                        ],
                      ),
                    );
                  },
                  separatorBuilder: (context, index) {
                    return const SizedBox(
                      width: 20,
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              if (screenWidth <= 600)
                Expanded(
                  child: ListView.separated(
                    padding: const EdgeInsets.only(bottom: 20),
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => MovieDetail(
                                poster: movies[index].backdropPath,
                                voteAverage: movies[index].voteAverage,
                                voteCount: movies[index].voteCount,
                                popularity: movies[index].popularity,
                                overview: movies[index].overview,
                                title: movies[index].title,
                                releaseDate: movies[index].releaseDate,
                                actors: movies[index].actors,
                                backdrop: movies[index].posterPath,
                              ),
                            ),
                          );
                        },
                        child: MovieVerticalLists(
                          poster: movies[index].posterPath,
                          title: movies[index].title,
                          releaseDate: movies[index].releaseDate,
                          overview: movies[index].overview,
                        ),
                      );
                    },
                    separatorBuilder: (context, index) {
                      return const SizedBox(
                        height: 20,
                      );
                    },
                    itemCount: upcomingMovies.length,
                  ),
                )
              else if (screenWidth < 900)
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    ),
                    padding: const EdgeInsets.only(bottom: 20),
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => MovieDetail(
                                poster: movies[index].backdropPath,
                                voteAverage: movies[index].voteAverage,
                                voteCount: movies[index].voteCount,
                                popularity: movies[index].popularity,
                                overview: movies[index].overview,
                                title: movies[index].title,
                                releaseDate: movies[index].releaseDate,
                                actors: movies[index].actors,
                                backdrop: movies[index].posterPath,
                              ),
                            ),
                          );
                        },
                        child: MovieGridList(
                          poster: movies[index].posterPath,
                          title: movies[index].title,
                        ),
                      );
                    },
                    itemCount: upcomingMovies.length,
                  ),
                )
              else if (screenWidth < 1200)
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                    ),
                    padding: const EdgeInsets.only(bottom: 20),
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => MovieDetail(
                                poster: movies[index].backdropPath,
                                voteAverage: movies[index].voteAverage,
                                voteCount: movies[index].voteCount,
                                popularity: movies[index].popularity,
                                overview: movies[index].overview,
                                title: movies[index].title,
                                releaseDate: movies[index].releaseDate,
                                actors: movies[index].actors,
                                backdrop: movies[index].posterPath,
                              ),
                            ),
                          );
                        },
                        child: MovieGridList(
                          poster: movies[index].posterPath,
                          title: movies[index].title,
                        ),
                      );
                    },
                    itemCount: upcomingMovies.length,
                  ),
                )
              else if (screenWidth < 1450)
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4,
                    ),
                    padding: const EdgeInsets.only(bottom: 20),
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => MovieDetail(
                                poster: movies[index].backdropPath,
                                voteAverage: movies[index].voteAverage,
                                voteCount: movies[index].voteCount,
                                popularity: movies[index].popularity,
                                overview: movies[index].overview,
                                title: movies[index].title,
                                releaseDate: movies[index].releaseDate,
                                actors: movies[index].actors,
                                backdrop: movies[index].posterPath,
                              ),
                            ),
                          );
                        },
                        child: MovieGridList(
                          poster: movies[index].posterPath,
                          title: movies[index].title,
                        ),
                      );
                    },
                    itemCount: upcomingMovies.length,
                  ),
                )
              else
                Expanded(
                  child: GridView.builder(
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 5,
                    ),
                    padding: const EdgeInsets.only(bottom: 20),
                    physics: const BouncingScrollPhysics(),
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => MovieDetail(
                                poster: movies[index].backdropPath,
                                voteAverage: movies[index].voteAverage,
                                voteCount: movies[index].voteCount,
                                popularity: movies[index].popularity,
                                overview: movies[index].overview,
                                title: movies[index].title,
                                releaseDate: movies[index].releaseDate,
                                actors: movies[index].actors,
                                backdrop: movies[index].posterPath,
                              ),
                            ),
                          );
                        },
                        child: MovieGridList(
                          poster: movies[index].posterPath,
                          title: movies[index].title,
                        ),
                      );
                    },
                    itemCount: upcomingMovies.length,
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
