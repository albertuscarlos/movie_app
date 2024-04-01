import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:movie_app/themes/themes.dart';

class MovieVerticalLists extends StatelessWidget {
  const MovieVerticalLists({
    super.key,
    required this.poster,
    required this.title,
    required this.releaseDate,
    required this.overview,
  });
  final String poster;
  final String title;
  final String releaseDate;
  final String overview;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
          border: Border.all(
            color: Colors.grey.shade300,
          ),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white70),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15),
            child: Image.network(
              poster,
              width: MediaQuery.of(context).size.width <= 370 ? 120 : 150,
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Expanded(
            child: SizedBox(
              height: MediaQuery.of(context).size.width <= 370 ? 170 : 200,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                      fontFamily: 'Figtree',
                      fontSize: 20,
                      color: primaryElementsColor,
                    ),
                  ),
                  Text(
                    overview,
                    maxLines: 4,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: TextStyle(
                      color: primaryElementsColor,
                      fontFamily: 'Figtree',
                    ),
                  ),
                  Text(releaseDate),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
