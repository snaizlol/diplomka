import 'package:diplomka/cubit/matches_cubit/matches_cubit.dart';
import 'package:diplomka/cubit/matches_cubit/matches_state.dart';
import 'package:diplomka/pages/create_match/create_match_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class SearchContentView extends StatelessWidget {
  const SearchContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(100, 243, 218, 189),
        title: const Text(
          'Search Page',
        ),
      ),
      body: Builder(builder: (context) {
        return BlocBuilder<MatchCubit, MatchState>(
          builder: (context, state) {
            if (state is MatchStateLoaded) {
              return Column(
                children: [
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.list.length,
                      itemBuilder: (context, index) {
                        return Text(state.list[index].teamOne.teamName);
                      },
                    ),
                  ),
                ],
              );
            } else
              return Placeholder();
          },
        );
      }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          context
              .pushNamed(CreateMatchPage.routeName)
              .then((value) => context.read<MatchCubit>().load());
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
