import 'package:flutter/material.dart';
import 'package:movie_app/models/movie_models.dart';
import 'package:movie_app/widgets/actor_horizontal_list.dart';

class MovieDetailMobileBig extends StatefulWidget {
  const MovieDetailMobileBig({
    super.key,
    required this.poster,
    required this.voteAverage,
    required this.voteCount,
    required this.popularity,
    required this.title,
    required this.releaseDate,
    required this.overview,
    required this.actors,
  });
  final String poster;
  final double voteAverage;
  final int voteCount;
  final double popularity;
  final String title;
  final String releaseDate;
  final String overview;
  final List<ActorModels> actors;

  @override
  State<MovieDetailMobileBig> createState() => _MovieDetailMobileBigState();
}

class _MovieDetailMobileBigState extends State<MovieDetailMobileBig> {
  bool rated = false;
  bool favorite = false;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                      bottomLeft: Radius.circular(25),
                    ),
                    child: Image.network(widget.poster),
                  ),
                ),
                Container(
                  height: 110,
                  margin: EdgeInsets.only(
                    left: MediaQuery.of(context).size.width / 8,
                    top: MediaQuery.of(context).size.height / 5.3,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(50),
                      bottomLeft: Radius.circular(50),
                    ),
                    color: Colors.white,
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 5,
                        blurRadius: 7,
                        offset:
                            const Offset(0, 3), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(top: 15),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Padding(
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
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
                                  : Icons.favorite_outline_rounded,
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
                      Text(
                        widget.overview,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                          fontFamily: 'Figtree',
                          fontSize: 15,
                          color: Colors.grey,
                          fontWeight: FontWeight.w800,
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
                        width: MediaQuery.of(context).size.width,
                        child: ListView.separated(
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
                    ],
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
