import 'package:diplomka/cubit/articles_cubit/aritcles_detail_page_state.dart';
import 'package:diplomka/cubit/articles_cubit/articles_detail_page_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticleDetailsContentView extends StatelessWidget {
  const ArticleDetailsContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Back to Articles',
        ),
      ),
      body: BlocBuilder<ArticleDetailPageCubit, ArticleDetailPageState>(
        builder: (context, state) {
          if (state is ArticleDetailPageLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is ArticleDetailPageLoaded) {
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
              child: SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      state.article.title,
                      style: const TextStyle(
                          fontSize: 24, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: Image.network(
                        state.article.imageUrl,
                        errorBuilder: (context, error, stackTrace) {
                          return const Placeholder();
                        },
                      ),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(state.article.text)
                  ],
                ),
              ),
            );
          } else {
            return const SizedBox.shrink();
          }
        },
      ),
    );
  }
}
