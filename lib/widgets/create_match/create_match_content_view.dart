import 'package:diplomka/cubit/create_match_cubit/create_match_cubit.dart';
import 'package:diplomka/entities/team_entity.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateMatchContentView extends StatelessWidget {
  const CreateMatchContentView({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController teamOneName = TextEditingController();
    final TextEditingController teamOnePlayer1 = TextEditingController();
    final TextEditingController teamOnePlayer2 = TextEditingController();
    final TextEditingController teamTwoName = TextEditingController();
    final TextEditingController teamTwoPlayer1 = TextEditingController();
    final TextEditingController teamTwoPlayer2 = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        title: const Text('Create Teams'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
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
                      const Text('Team name'),
                      SizedBox(
                        height: 50,
                        child: TextFormField(
                          controller: teamOneName,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder()),
                        ),
                      ),
                      const Text('Player 1'),
                      SizedBox(
                        height: 50,
                        child: TextFormField(
                          controller: teamOnePlayer1,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder()),
                        ),
                      ),
                      const Text('Player 2'),
                      SizedBox(
                        height: 50,
                        child: TextFormField(
                          controller: teamOnePlayer2,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder()),
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
                          controller: teamTwoName,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder()),
                        ),
                      ),
                      const Text('Player 1'),
                      SizedBox(
                        height: 50,
                        child: TextFormField(
                          controller: teamTwoPlayer1,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder()),
                        ),
                      ),
                      const Text('Player 2'),
                      SizedBox(
                        height: 50,
                        child: TextFormField(
                          controller: teamTwoPlayer2,
                          decoration: const InputDecoration(
                              border: OutlineInputBorder()),
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
                            teamName: teamOneName.text,
                            playerOneName: teamOnePlayer1.text,
                            playerTwoName: teamTwoPlayer2.text),
                        TeamEntity(
                            teamName: teamTwoName.text,
                            playerOneName: teamTwoPlayer1.text,
                            playerTwoName: teamTwoPlayer2.text));
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
