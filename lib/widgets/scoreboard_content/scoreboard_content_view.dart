import 'package:diplomka/cubit/matches_cubit/matches_cubit.dart';
import 'package:diplomka/cubit/matches_cubit/matches_state.dart';
import 'package:diplomka/pages/create_match/create_match_page.dart';
import 'package:diplomka/pages/match_detail_page/match_detail_page.dart';
import 'package:diplomka/theme/theme_colors.dart';
import 'package:diplomka/theme/theme_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class ScoreboardContentView extends StatelessWidget {
  const ScoreboardContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ProjectColors.headerColor,
        title: const Text(
          'Scoreboard',
          style: CustomTextStyles.header,
        ),
      ),
      body: Builder(builder: (context) {
        return BlocBuilder<MatchCubit, MatchState>(
          builder: (context, state) {
            if (state is MatchStateLoaded) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: ListView.builder(
                      shrinkWrap: true,
                      itemCount: state.list.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.all(20),
                          child: CardScoreboardWidget(
                            index: index,
                            callBack: () {
                              context.pushNamed(
                                MatchDetailPage.routeName,
                                pathParameters: {
                                  'id': (state.list[index].matchId)
                                },
                              ).then(
                                (value) => context.read<MatchCubit>()..load(),
                              );
                            },
                          ),
                        );
                      },
                    ),
                  ),
                ],
              );
            } else {
              return const Placeholder();
            }
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

class CardScoreboardWidget extends StatelessWidget {
  const CardScoreboardWidget({
    required this.index,
    required this.callBack,
    super.key,
  });
  final int index;
  final void Function() callBack;
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<MatchCubit, MatchState>(
      builder: (context, state) {
        return GestureDetector(
          onTap: callBack,
          child: DecoratedBox(
            decoration: const BoxDecoration(
              color: Color.fromARGB(255, 219, 219, 219),
              borderRadius: BorderRadius.all(Radius.circular(12)),
            ),
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          state.list[index].teamOne.teamName,
                          maxLines: 1,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          state.list[index].teamOne.playerOneName,
                          maxLines: 1,
                        ),
                        Text(
                          state.list[index].teamOne.playerTwoName,
                          maxLines: 1,
                        )
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '${state.list[index].teamOneGamesWon} : ${state.list[index].teamTwoGamesWon}',
                          style: const TextStyle(fontSize: 24),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          state.list[index].teamTwo.teamName,
                          maxLines: 1,
                          style: const TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold),
                        ),
                        Text(
                          state.list[index].teamTwo.playerOneName,
                          maxLines: 1,
                        ),
                        Text(
                          state.list[index].teamTwo.playerTwoName,
                          maxLines: 1,
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
