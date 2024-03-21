import 'package:diplomka/components/create_team_input_field.dart';
import 'package:diplomka/cubit/create_match_cubit/create_match_cubit.dart';
import 'package:diplomka/entities/team_entity.dart';
import 'package:diplomka/theme/theme_colors.dart';
import 'package:diplomka/theme/theme_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateMatchContentView extends StatelessWidget {
  const CreateMatchContentView({super.key});

  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();
    final TextEditingController teamOneName = TextEditingController();
    final TextEditingController teamOnePlayer1 = TextEditingController();
    final TextEditingController teamOnePlayer2 = TextEditingController();
    final TextEditingController teamTwoName = TextEditingController();
    final TextEditingController teamTwoPlayer1 = TextEditingController();
    final TextEditingController teamTwoPlayer2 = TextEditingController();

    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: AppBar(
        backgroundColor: ProjectColors.headerColor,
        title: const Text(
          'Create Teams',
          style: CustomTextStyles.header,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Team 1',
                      style: CustomTextStyles.headline2,
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Team name',
                          style: CustomTextStyles.regularText,
                        ),
                        InputFieldWidget(
                          teamOneName: teamOneName,
                          key: Key('teamOneName'),
                        ),
                        const Text(
                          'Player 1',
                          style: CustomTextStyles.regularText,
                        ),
                        InputFieldWidget(
                          teamOneName: teamOnePlayer1,
                          key: Key('teamOnePlayer1'),
                        ),
                        const Text(
                          'Player 2',
                          style: CustomTextStyles.regularText,
                        ),
                        InputFieldWidget(
                            teamOneName: teamOnePlayer2,
                            key: Key('teamOnePlayer2')),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const Text(
                      'Team 2',
                      style: CustomTextStyles.headline2,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Team name',
                          style: CustomTextStyles.regularText,
                        ),
                        InputFieldWidget(
                            teamOneName: teamTwoName, key: Key('teamTwoName')),
                        const Text(
                          'Player 1',
                          style: CustomTextStyles.regularText,
                        ),
                        InputFieldWidget(
                            teamOneName: teamTwoPlayer1,
                            key: Key('teamTwoPlayer1')),
                        const Text(
                          'Player 2',
                          style: CustomTextStyles.regularText,
                        ),
                        InputFieldWidget(
                            teamOneName: teamTwoPlayer2,
                            key: Key('teamTwoPlayer2')),
                      ],
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                SizedBox(
                  width: 300,
                  child: ElevatedButton(
                      style: const ButtonStyle(
                          backgroundColor:
                              MaterialStatePropertyAll(Colors.green)),
                      onPressed: () {
                        if (formKey.currentState!.validate()) {
                          context.read<CreateMatchCubit>().createMatch(
                                TeamEntity(
                                  teamName: teamOneName.text,
                                  playerOneName: teamOnePlayer1.text,
                                  playerTwoName: teamTwoPlayer2.text,
                                ),
                                TeamEntity(
                                  teamName: teamTwoName.text,
                                  playerOneName: teamTwoPlayer1.text,
                                  playerTwoName: teamTwoPlayer2.text,
                                ),
                              );
                          Navigator.pop(context);
                        }
                      },
                      child: const Text(
                        'Create Team',
                        style: TextStyle(
                            color: Colors.black, fontWeight: FontWeight.bold),
                      )),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
