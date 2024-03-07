import 'package:diplomka/cubit/match_detail_cubit/match_detail_cubit.dart';
import 'package:diplomka/entities/di.dart';
import 'package:diplomka/widgets/match_detail_content/match_detail_content_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MatchDetailPage extends StatelessWidget {
  const MatchDetailPage({super.key, this.id});

  static const routeName = 'match';
  static const routePath = 'match/detail/:id';

  final int? id;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<MatchDetailCubit>()..load(id ?? 0),
      child: MatchDetailContentView(
        index: id ?? 0,
      ),
    );
  }
}
