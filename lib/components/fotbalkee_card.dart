import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {super.key,
      required this.name,
      required this.rating,
      required this.adress,
      required this.index});

  final String name;
  final double rating;
  final String adress;
  final int index;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: Row(
        children: [
          DecoratedBox(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
            ),
            child: Image.network('https://i.pravatar.cc/300/$index'),
          ),
          const SizedBox(
            width: 10,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(name),
              Text(adress),
              Text('$rating'),
            ],
          )
        ],
      ),
    );
  }
}
