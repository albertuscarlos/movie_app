import 'package:flutter/material.dart';

class ActorHorizontalList extends StatelessWidget {
  const ActorHorizontalList({
    super.key,
    required this.name,
    required this.image,
    required this.character,
  });
  final String name;
  final String image;
  final String character;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 80,
          width: 80,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.network(
              image,
              height: 100,
              width: 100,
              fit: BoxFit.cover,
            ),
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        SizedBox(
          width: 100,
          child: Text(
            name,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: 'Figtree',
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 3,
        ),
        Text(
          character,
          style: const TextStyle(
            fontFamily: 'Figtree',
            fontSize: 12,
            color: Colors.grey,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
