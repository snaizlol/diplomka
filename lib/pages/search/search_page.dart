import 'package:diplomka/cubit/matches_cubit/matches_cubit.dart';
import 'package:diplomka/entities/di.dart';
import 'package:diplomka/widgets/search_content/search_content_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<MatchCubit>()..load(),
      child: const SearchContentView(),
    );
  }
}
