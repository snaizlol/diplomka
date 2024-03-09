import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard({
    super.key,
    required this.description,
    required this.imageUrl,
    required this.title,
  });

  final String title;
  final String description;
  final String imageUrl;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.network(
                imageUrl,
                errorBuilder: (context, error, stackTrace) {
                  return const Placeholder();
                },
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Text(
              title,
              maxLines: 1,
              style: const TextStyle(fontSize: 25),
            ),
            Text(
              description,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
