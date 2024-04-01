import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_app/models/movie_models.dart';
import 'package:movie_app/widgets/actor_horizontal_list.dart';

class MovieDetailWeb extends StatefulWidget {
  const MovieDetailWeb(
      {super.key,
      required this.poster,
      required this.voteAverage,
      required this.voteCount,
      required this.popularity,
      required this.title,
      required this.releaseDate,
      required this.overview,
      required this.actors,
      required this.backdrop});
  final String poster;
  final double voteAverage;
  final int voteCount;
  final double popularity;
  final String title;
  final String releaseDate;
  final String overview;
  final List<ActorModels> actors;
  final String backdrop;

  @override
  State<MovieDetailWeb> createState() => _MovieDetailWebState();
}

class _MovieDetailWebState extends State<MovieDetailWeb> {
  bool rated = false;
  bool favorite = false;
  final _scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: screenWidth <= 1220
              ? Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.network(widget.poster),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          SizedBox(
                            height: 110,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: SizedBox(
                                width: 600,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        const Icon(
                                          Icons.star_rounded,
                                          size: 35,
                                          color: Color(0xffFCC419),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '${widget.voteAverage.roundToDouble()}',
                                              style: const TextStyle(
                                                fontFamily: 'Figtree',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                            const Text(
                                              '/10',
                                              style: TextStyle(
                                                fontFamily: 'Figtree',
                                                fontWeight: FontWeight.w800,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '${widget.voteCount}',
                                          style: const TextStyle(
                                            fontFamily: 'Figtree',
                                            fontSize: 13,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              rated = !rated;
                                            });
                                          },
                                          child: Icon(
                                            rated
                                                ? Icons.star_rounded
                                                : Icons.star_border_rounded,
                                            size: 35,
                                            color: const Color(0xffFCC419),
                                          ),
                                        ),
                                        const Text(
                                          'Rate This',
                                          style: TextStyle(
                                            fontFamily: 'Figtree',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        const Icon(
                                          Icons.local_fire_department,
                                          size: 35,
                                          color: Colors.red,
                                        ),
                                        const Text(
                                          'Popularity',
                                          style: TextStyle(
                                            fontFamily: 'Figtree',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        Text(
                                          '${widget.popularity}',
                                          style: const TextStyle(
                                            fontFamily: 'Figtree',
                                            fontSize: 15,
                                            color: Colors.red,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 50,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 150,
                              right: 150,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width:
                                                screenWidth <= 700 ? 200 : 260,
                                            child: Text(
                                              widget.title,
                                              style: const TextStyle(
                                                fontFamily: 'Figtree',
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 7,
                                          ),
                                          Text(
                                            widget.releaseDate,
                                            style: const TextStyle(
                                              fontFamily: 'Figtree',
                                              fontSize: 15,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                favorite = !favorite;
                                              });
                                            },
                                            child: Icon(
                                              favorite
                                                  ? Icons.favorite_rounded
                                                  : Icons
                                                      .favorite_outline_rounded,
                                              color: Colors.red,
                                              size: 35,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 6,
                                          ),
                                          const Text(
                                            'Add to Favorites',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Figtree',
                                              fontSize: 11,
                                              color: Colors.red,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 60,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Overview',
                                      style: TextStyle(
                                        fontFamily: 'Figtree',
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    SizedBox(
                                      width: 500,
                                      child: Text(
                                        widget.overview,
                                        textAlign: TextAlign.justify,
                                        style: const TextStyle(
                                          fontFamily: 'Figtree',
                                          fontSize: 15,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 60,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Cast',
                                      style: TextStyle(
                                        fontFamily: 'Figtree',
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    SizedBox(
                                      height: 170,
                                      width: 500,
                                      child: Scrollbar(
                                        controller: _scrollController,
                                        child: ListView.separated(
                                          controller: _scrollController,
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (context, index) {
                                            final data = widget.actors;
                                            return ActorHorizontalList(
                                              name: data[index].name,
                                              image: data[index].profilePath,
                                              character: data[index].character,
                                            );
                                          },
                                          separatorBuilder: (context, index) {
                                            return const SizedBox(
                                              width: 30,
                                            );
                                          },
                                          itemCount: widget.actors.length,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              : Padding(
                  padding: const EdgeInsets.only(top: 120),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(25),
                            child: Image.network(widget.poster),
                          ),
                          SizedBox(
                            height: 50,
                          ),
                          SizedBox(
                            height: 110,
                            child: Padding(
                              padding: const EdgeInsets.only(top: 15),
                              child: SizedBox(
                                width: 600,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        const Icon(
                                          Icons.star_rounded,
                                          size: 35,
                                          color: Color(0xffFCC419),
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              '${widget.voteAverage.roundToDouble()}',
                                              style: const TextStyle(
                                                fontFamily: 'Figtree',
                                                fontWeight: FontWeight.bold,
                                                fontSize: 18,
                                              ),
                                            ),
                                            const Text(
                                              '/10',
                                              style: TextStyle(
                                                fontFamily: 'Figtree',
                                                fontWeight: FontWeight.w800,
                                                fontSize: 13,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Text(
                                          '${widget.voteCount}',
                                          style: const TextStyle(
                                            fontFamily: 'Figtree',
                                            fontSize: 13,
                                            color: Colors.grey,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        InkWell(
                                          onTap: () {
                                            setState(() {
                                              rated = !rated;
                                            });
                                          },
                                          child: Icon(
                                            rated
                                                ? Icons.star_rounded
                                                : Icons.star_border_rounded,
                                            size: 35,
                                            color: const Color(0xffFCC419),
                                          ),
                                        ),
                                        const Text(
                                          'Rate This',
                                          style: TextStyle(
                                            fontFamily: 'Figtree',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        const Icon(
                                          Icons.local_fire_department,
                                          size: 35,
                                          color: Colors.red,
                                        ),
                                        const Text(
                                          'Popularity',
                                          style: TextStyle(
                                            fontFamily: 'Figtree',
                                            fontSize: 15,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                        Text(
                                          '${widget.popularity}',
                                          style: const TextStyle(
                                            fontFamily: 'Figtree',
                                            fontSize: 15,
                                            color: Colors.red,
                                            fontWeight: FontWeight.w800,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        width: 50,
                      ),
                      Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                              left: 20,
                              right: 20,
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          SizedBox(
                                            width: 260,
                                            child: Text(
                                              widget.title,
                                              style: const TextStyle(
                                                fontFamily: 'Figtree',
                                                fontSize: 30,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 7,
                                          ),
                                          Text(
                                            widget.releaseDate,
                                            style: const TextStyle(
                                              fontFamily: 'Figtree',
                                              fontSize: 15,
                                              color: Colors.grey,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Column(
                                        children: [
                                          InkWell(
                                            onTap: () {
                                              setState(() {
                                                favorite = !favorite;
                                              });
                                            },
                                            child: Icon(
                                              favorite
                                                  ? Icons.favorite_rounded
                                                  : Icons
                                                      .favorite_outline_rounded,
                                              color: Colors.red,
                                              size: 35,
                                            ),
                                          ),
                                          const SizedBox(
                                            height: 6,
                                          ),
                                          const Text(
                                            'Add to Favorites',
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontFamily: 'Figtree',
                                              fontSize: 11,
                                              color: Colors.red,
                                              fontWeight: FontWeight.w800,
                                            ),
                                          ),
                                        ],
                                      )
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  height: 60,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Overview',
                                      style: TextStyle(
                                        fontFamily: 'Figtree',
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    SizedBox(
                                      width: 500,
                                      child: Text(
                                        widget.overview,
                                        textAlign: TextAlign.justify,
                                        style: const TextStyle(
                                          fontFamily: 'Figtree',
                                          fontSize: 15,
                                          color: Colors.grey,
                                          fontWeight: FontWeight.w800,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 60,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Text(
                                      'Cast',
                                      style: TextStyle(
                                        fontFamily: 'Figtree',
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                    SizedBox(
                                      height: 170,
                                      width: 500,
                                      child: Scrollbar(
                                        controller: _scrollController,
                                        child: ListView.separated(
                                          controller: _scrollController,
                                          scrollDirection: Axis.horizontal,
                                          itemBuilder: (context, index) {
                                            final data = widget.actors;
                                            return ActorHorizontalList(
                                              name: data[index].name,
                                              image: data[index].profilePath,
                                              character: data[index].character,
                                            );
                                          },
                                          separatorBuilder: (context, index) {
                                            return const SizedBox(
                                              width: 30,
                                            );
                                          },
                                          itemCount: widget.actors.length,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
        ),
      ),
    );
  }
}
