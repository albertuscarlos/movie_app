import 'package:flutter/material.dart';

class MovieGridList extends StatelessWidget {
  const MovieGridList({
    super.key,
    required this.poster,
    required this.title,
  });

  final String poster;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(15),
          child: Image.network(
            poster,
            width: 150,
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Text(
          title,
          textAlign: TextAlign.center,
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            fontFamily: 'Figtree',
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
