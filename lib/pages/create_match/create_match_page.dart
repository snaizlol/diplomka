import 'package:diplomka/cubit/create_match_cubit/create_match_cubit.dart';
import 'package:diplomka/entities/di.dart';
import 'package:diplomka/widgets/create_match/create_match_content_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateMatchPage extends StatelessWidget {
  const CreateMatchPage({super.key});

  static const routeName = 'create_match';
  static const routePath = 'create_match';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<CreateMatchCubit>(),
      child: const CreateMatchContentView(),
    );
  }
}
