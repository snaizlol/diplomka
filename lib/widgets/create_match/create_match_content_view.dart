import 'package:diplomka/cubit/create_match_cubit/create_match_cubit.dart';
import 'package:diplomka/entities/team_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class CreateMatchContentView extends StatelessWidget {
  const CreateMatchContentView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController _teamOneName = TextEditingController();
    final TextEditingController _teamOnePlayer1 = TextEditingController();
    final TextEditingController _teamOnePlayer2 = TextEditingController();
    final TextEditingController _teamTwoName = TextEditingController();
    final TextEditingController _teamTwoPlayer1 = TextEditingController();
    final TextEditingController _teamTwoPlayer2 = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Create Teams'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Team 1',
                    style: TextStyle(fontSize: 26),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Team name'),
                      SizedBox(
                        height: 50,
                        child: TextFormField(
                          controller: _teamOneName,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                      Text('Player 1'),
                      SizedBox(
                        height: 50,
                        child: TextFormField(
                          controller: _teamOnePlayer1,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                      Text('Player 2'),
                      SizedBox(
                        height: 50,
                        child: TextFormField(
                          controller: _teamOnePlayer2,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    'Team 2',
                    style: TextStyle(fontSize: 26),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text('Team name'),
                      SizedBox(
                        height: 50,
                        child: TextFormField(
                          controller: _teamTwoName,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                      const Text('Player 1'),
                      SizedBox(
                        height: 50,
                        child: TextFormField(
                          controller: _teamTwoPlayer1,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                      const Text('Player 2'),
                      SizedBox(
                        height: 50,
                        child: TextFormField(
                          controller: _teamTwoPlayer2,
                          decoration:
                              InputDecoration(border: OutlineInputBorder()),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 10,
              ),
              ElevatedButton(
                  onPressed: () {
                    context.read<CreateMatchCubit>().createMatch(
                        TeamEntity(
                            teamName: _teamOneName.text,
                            playerOneName: _teamOnePlayer1.text,
                            playerTwoName: _teamTwoPlayer2.text),
                        TeamEntity(
                            teamName: _teamOnePlayer2.text,
                            playerOneName: _teamTwoPlayer1.text,
                            playerTwoName: _teamTwoPlayer2.text));
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Create Team',
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
