import 'package:diplomka/cubit/matches_cubit/matches_cubit.dart';
import 'package:diplomka/cubit/matches_cubit/matches_state.dart';
import 'package:diplomka/theme/theme_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ScoreboardCard extends StatelessWidget {
  const ScoreboardCard({
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
              color: ProjectColors.scoreboardCardColor,
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
