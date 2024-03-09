import 'package:diplomka/cubit/articles_cubit/articles_page_cubit.dart';
import 'package:diplomka/entities/di.dart';
import 'package:diplomka/widgets/articles/articles_content/articles_content_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ArticlesPage extends StatelessWidget {
  const ArticlesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<ArticlesPageCubit>()..load(),
      child: const ArticlesContentView(),
    );
  }
}
