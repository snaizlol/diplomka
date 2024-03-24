import 'package:diplomka/cubit/match_detail_cubit/match_detail_cubit.dart';
import 'package:diplomka/cubit/match_detail_cubit/match_detail_state.dart';
import 'package:diplomka/theme/theme_colors.dart';
import 'package:diplomka/theme/theme_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class MatchDetailContentView extends StatelessWidget {
  const MatchDetailContentView({super.key, required this.id});

  final String id;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: ProjectColors.headerColor,
        title: const Text(
          'Match info',
          style: CustomTextStyles.header,
        ),
      ),
      body: BlocBuilder<MatchDetailCubit, MatchDetailState>(
          builder: (context, state) {
        if (state is MatchDetailLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is MatchDetailLoaded) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Stadium ${state.matchInfo.pub.name}',
                style: CustomTextStyles.header,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        state.matchInfo.teamOne.teamName,
                        maxLines: 2,
                        style: const TextStyle(fontSize: 24),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        state.matchInfo.teamTwo.teamName,
                        style: const TextStyle(fontSize: 24),
                        maxLines: 2,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('${state.teamOneWins} : ${state.teamTwoWins}',
                      style: CustomTextStyles.headlineRegular),
                ],
              ),
              state.teamOneWins == 0 && state.teamTwoWins == 0
                  ? const Text(
                      'Win rate none',
                      style: CustomTextStyles.regularText,
                    )
                  : Text(
                      '${((state.teamOneWins / (state.teamOneWins + state.teamTwoWins)) * 100).toStringAsFixed(1)}% : ${((state.teamTwoWins / (state.teamOneWins + state.teamTwoWins)) * 100).toStringAsFixed(1)}% ',
                      style: CustomTextStyles.regularText,
                    ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          state.matchInfo.teamOne.playerOneName,
                          style: CustomTextStyles.regularText,
                        ),
                        Text(
                          state.matchInfo.teamOne.playerTwoName,
                          style: CustomTextStyles.regularText,
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 100,
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          state.matchInfo.teamTwo.playerOneName,
                          style: CustomTextStyles.regularText,
                        ),
                        Text(
                          state.matchInfo.teamTwo.playerTwoName,
                          style: CustomTextStyles.regularText,
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                          style: const ButtonStyle(
                            iconColor: MaterialStatePropertyAll(
                              Colors.black,
                            ),
                          ),
                          onPressed: () {
                            context.read<MatchDetailCubit>().addWin(id, 1);
                          },
                          child: const Icon(Icons.add)),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          style: const ButtonStyle(
                            iconColor: MaterialStatePropertyAll(
                              Colors.black,
                            ),
                          ),
                          onPressed: () {
                            context.read<MatchDetailCubit>().removeWin(id, 1);
                          },
                          child: const Icon(Icons.remove)),
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          style: const ButtonStyle(
                            iconColor: MaterialStatePropertyAll(
                              Colors.black,
                            ),
                          ),
                          onPressed: () {
                            context.read<MatchDetailCubit>().addWin(id, 2);
                          },
                          child: const Icon(Icons.add)),
                      const SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          style: const ButtonStyle(
                            iconColor: MaterialStatePropertyAll(
                              Colors.black,
                            ),
                          ),
                          onPressed: () {
                            context.read<MatchDetailCubit>().removeWin(id, 2);
                          },
                          child: const Icon(Icons.remove)),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              SizedBox(
                width: 300,
                child: ElevatedButton(
                  style: const ButtonStyle(
                    backgroundColor: MaterialStatePropertyAll(Colors.red),
                  ),
                  onPressed: () {
                    context.read<MatchDetailCubit>().deleteMatch(id);
                    context.pop();
                  },
                  child: const Text(
                    'Delete match',
                    style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                ),
              )
            ],
          );
        } else {
          return const SizedBox.shrink();
        }
      }),
    );
  }
}
