import 'package:diplomka/components/article_card.dart';
import 'package:diplomka/cubit/articles_cubit/articles_page_cubit.dart';
import 'package:diplomka/cubit/articles_cubit/articles_page_state.dart';
import 'package:diplomka/pages/articles/articles_detail_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ArticlesContentView extends StatelessWidget {
  const ArticlesContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Articles'),
        backgroundColor: const Color.fromARGB(100, 243, 218, 189),
      ),
      body: Center(
        child: BlocBuilder<ArticlesPageCubit, ArticlesPageState>(
          builder: (context, state) {
            if (state is ArticlesPageLoaded) {
              return ListView.builder(
                itemCount: state.list.length,
                itemBuilder: (context, index) {
                  return ArticleCard(
                    description: state.list[index].text,
                    callBack: () {
                      context.pushNamed(
                        ArticlesDetailPage.routeName,
                        pathParameters: {
                          'id': (state.list[index].id).toString()
                        },
                      );
                    },
                    imageUrl: 'https://picsum.photos/350/200/',
                    title: state.list[index].title,
                  );
                },
              );
            } else {
              return const Placeholder();
            }
          },
        ),
      ),
    );
  }
}
