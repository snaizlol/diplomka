import 'package:diplomka/cubit/articles_cubit/articles_detail_page_cubit.dart';
import 'package:diplomka/entities/di.dart';
import 'package:diplomka/widgets/articles/aritcles_detail/articles_detail_content_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticlesDetailPage extends StatelessWidget {
  const ArticlesDetailPage({super.key, required this.id});

  static const routeName = 'article';
  static const routePath = 'article/detail/:id';

  final int? id;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<ArticleDetailPageCubit>()..load(id ?? 0),
      child: const ArticleDetailsContentView(),
    );
  }
}
