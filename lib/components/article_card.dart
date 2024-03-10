import 'package:diplomka/theme/theme_text_styles.dart';
import 'package:flutter/material.dart';

class ArticleCard extends StatelessWidget {
  const ArticleCard(
      {super.key,
      required this.description,
      required this.imageUrl,
      required this.title,
      required this.callBack});

  final String title;
  final String description;
  final String imageUrl;
  final void Function() callBack;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callBack,
      child: SizedBox(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
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
                style: CustomTextStyles.headlineBold,
              ),
              Text(
                description,
                maxLines: 3,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(
                height: 10,
              ),
              const Divider()
            ],
          ),
        ),
      ),
    );
  }
}
