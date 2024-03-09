import 'package:flutter/material.dart';

class CardWidget extends StatelessWidget {
  const CardWidget(
      {super.key,
      required this.name,
      required this.rating,
      required this.adress,
      required this.index,
      required this.callback});

  final String name;
  final double rating;
  final String adress;
  final int index;
  final void Function() callback;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: GestureDetector(
        onTap: callback,
        child: DecoratedBox(
          decoration: BoxDecoration(
            color: const Color.fromARGB(255, 244, 244, 244),
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.all(Radius.circular(12)),
                child: SizedBox(
                  height: 100,
                  width: 100,
                  child: Image.network(
                    'https://picsum.photos/200',
                    errorBuilder: (context, error, stackTrace) {
                      return const Placeholder();
                    },
                  ),
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(name),
                  Text(adress),
                  Row(
                    children: [
                      const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      Text('$rating')
                    ],
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
