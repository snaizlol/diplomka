import 'package:diplomka/theme/theme_colors.dart';
import 'package:diplomka/theme/theme_text_styles.dart';
import 'package:flutter/material.dart';

class PubCardWidget extends StatelessWidget {
  const PubCardWidget({
    super.key,
    required this.name,
    required this.rating,
    required this.adress,
    required this.callback,
    required this.imageUrl,
  });

  final String name;
  final double rating;
  final String adress;
  final String imageUrl;
  final void Function() callback;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: SizedBox(
        height: 100,
        child: GestureDetector(
          onTap: callback,
          child: DecoratedBox(
            decoration: BoxDecoration(
              color: ProjectColors.scoreboardCardColor,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: const BorderRadius.only(
                      topLeft: Radius.circular(12),
                      bottomLeft: Radius.circular(12)),
                  child: SizedBox(
                    height: 130,
                    width: 130,
                    child: Image.asset(
                      imageUrl,
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
                    Text(
                      name,
                      style: CustomTextStyles.regularTextBold,
                    ),
                    Row(
                      children: [
                        Text(
                          adress,
                          style: CustomTextStyles.pubDetailStyle,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        const Icon(
                          Icons.star,
                          color: Colors.amber,
                        ),
                        Text(
                          '$rating',
                          style: CustomTextStyles.regularText,
                        )
                      ],
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
