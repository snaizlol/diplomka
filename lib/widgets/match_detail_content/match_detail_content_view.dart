import 'package:diplomka/cubit/match_detail_cubit/match_detail_cubit.dart';
import 'package:diplomka/cubit/match_detail_cubit/match_detail_state.dart';
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
        title: Text(
          'Match info',
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
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    state.matchInfo.teamOne.teamName,
                    style: TextStyle(fontSize: 30),
                  ),
                  Text(
                    state.matchInfo.teamTwo.teamName,
                    style: TextStyle(fontSize: 30),
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${state.teamOneWins} : ${state.teamTwoWins}',
                    style: TextStyle(
                      fontSize: 24,
                    ),
                  ),
                ],
              ),
              Text(
                  '${((state.teamOneWins / (state.teamOneWins + state.teamTwoWins)) * 100).toStringAsFixed(1)}% : ${((state.teamTwoWins / (state.teamOneWins + state.teamTwoWins)) * 100).toStringAsFixed(1)}% '),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(state.matchInfo.teamOne.playerOneName),
                      Text(
                        state.matchInfo.teamOne.playerTwoName,
                      )
                    ],
                  ),
                  SizedBox(
                    height: 100,
                  ),
                  Column(
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
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            context.read<MatchDetailCubit>().addWin(id, 1);
                          },
                          child: Icon(Icons.add)),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            context.read<MatchDetailCubit>().removeWin(id, 1);
                          },
                          child: Icon(Icons.remove)),
                    ],
                  ),
                  Row(
                    children: [
                      ElevatedButton(
                          onPressed: () {
                            context.read<MatchDetailCubit>().addWin(id, 2);
                          },
                          child: Icon(Icons.add)),
                      SizedBox(
                        width: 10,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            context.read<MatchDetailCubit>().removeWin(id, 2);
                          },
                          child: Icon(Icons.remove)),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<MatchDetailCubit>().deleteMatch(id);
                    context.pop();
                  },
                  child: Text('Delete match'))
            ],
          );
        } else
          // ignore: curly_braces_in_flow_control_structures
          return const SizedBox.shrink();
      }),
    );
  }
}
