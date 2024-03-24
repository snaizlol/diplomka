import 'package:diplomka/components/create_team_input_field.dart';
import 'package:diplomka/cubit/create_match_cubit/create_match_cubit.dart';
import 'package:diplomka/entities/team.dart';
import 'package:diplomka/repositories/fotbalkee_repo/mockup_pubs.dart';
import 'package:diplomka/theme/theme_colors.dart';
import 'package:diplomka/theme/theme_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CreateMatchContentView extends StatefulWidget {
  const CreateMatchContentView({super.key});

  @override
  State<CreateMatchContentView> createState() => _CreateMatchContentViewState();
}

class _CreateMatchContentViewState extends State<CreateMatchContentView> {
  @override
  Widget build(BuildContext context) {
    final pubs = PubMockupRepository.listOfPubs;
    final formKey = GlobalKey<FormState>();
    final TextEditingController teamOneName = TextEditingController();
    final TextEditingController teamOnePlayer1 = TextEditingController();
    final TextEditingController teamOnePlayer2 = TextEditingController();
    final TextEditingController teamTwoName = TextEditingController();
    final TextEditingController teamTwoPlayer1 = TextEditingController();
    final TextEditingController teamTwoPlayer2 = TextEditingController();
    late int id;
    var selectedName = 'Select Stadium';

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
                StatefulBuilder(
                  builder: (context, setState) {
                    return DropdownButtonFormField(
                      validator: (input) {
                        if (input == null) {
                          return 'Input cannot be empty';
                        }
                        return null;
                      },
                      hint: Text(selectedName),
                      items: [
                        for (var i = 0; i < pubs.length; i++)
                          DropdownMenuItem(
                            value: pubs[i].id,
                            child: Text(pubs[i].name),
                            onTap: () => setState(() {
                              id = pubs[i].id;
                              selectedName = pubs[i].name;
                            }),
                          ),
                      ],
                      onChanged: (value) {},
                    );
                  },
                ),
                const SizedBox(
                  height: 10,
                ),
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
                          key: const Key('teamOneName'),
                        ),
                        const Text(
                          'Player 1',
                          style: CustomTextStyles.regularText,
                        ),
                        InputFieldWidget(
                          teamOneName: teamOnePlayer1,
                          key: const Key('teamOnePlayer1'),
                        ),
                        const Text(
                          'Player 2',
                          style: CustomTextStyles.regularText,
                        ),
                        InputFieldWidget(
                            teamOneName: teamOnePlayer2,
                            key: const Key('teamOnePlayer2')),
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
                            teamOneName: teamTwoName,
                            key: const Key('teamTwoName')),
                        const Text(
                          'Player 1',
                          style: CustomTextStyles.regularText,
                        ),
                        InputFieldWidget(
                            teamOneName: teamTwoPlayer1,
                            key: const Key('teamTwoPlayer1')),
                        const Text(
                          'Player 2',
                          style: CustomTextStyles.regularText,
                        ),
                        InputFieldWidget(
                            teamOneName: teamTwoPlayer2,
                            key: const Key('teamTwoPlayer2')),
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
                              teamOne: Team(
                                teamName: teamOneName.text,
                                playerOneName: teamOnePlayer1.text,
                                playerTwoName: teamTwoPlayer2.text,
                              ),
                              teamTwo: Team(
                                teamName: teamTwoName.text,
                                playerOneName: teamTwoPlayer1.text,
                                playerTwoName: teamTwoPlayer2.text,
                              ),
                              pubId: id);
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
