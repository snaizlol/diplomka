import 'package:diplomka/cubit/matches_cubit/matches_cubit.dart';
import 'package:diplomka/entities/di.dart';
import 'package:diplomka/widgets/scoreboard_content/scoreboard_content_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScoreboardPage extends StatelessWidget {
  const ScoreboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<MatchCubit>()..load(),
      child: const ScoreboardContentView(),
    );
  }
}
