import 'package:diplomka/cubit/match_detail_cubit/match_detail_cubit.dart';
import 'package:diplomka/cubit/match_detail_cubit/match_detail_state.dart';
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
        backgroundColor: const Color.fromARGB(100, 243, 218, 189),
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: Center(
                      child: Text(
                        state.matchInfo.teamOne.teamName,
                        maxLines: 2,
                        style: const TextStyle(fontSize: 30),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Center(
                      child: Text(
                        state.matchInfo.teamTwo.teamName,
                        style: const TextStyle(fontSize: 30),
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
                  Text(
                    '${state.teamOneWins} : ${state.teamTwoWins}',
                    style: const TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              state.teamOneWins == 0 && state.teamTwoWins == 0
                  ? const Text('Win rate none')
                  : Text(
                      '${((state.teamOneWins / (state.teamOneWins + state.teamTwoWins)) * 100).toStringAsFixed(1)}% : ${((state.teamTwoWins / (state.teamOneWins + state.teamTwoWins)) * 100).toStringAsFixed(1)}% '),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(state.matchInfo.teamOne.playerOneName),
                        Text(
                          state.matchInfo.teamOne.playerTwoName,
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
                        ),
                        Text(
                          state.matchInfo.teamTwo.playerTwoName,
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
