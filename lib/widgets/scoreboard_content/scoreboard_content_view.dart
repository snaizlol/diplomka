import 'package:diplomka/components/scoreboard_card.dart';
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
      body: Builder(
        builder: (context) {
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
        },
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: ProjectColors.createButtonBackgroundColor,
        onPressed: () {
          context
              .pushNamed(CreateMatchPage.routeName)
              .then((value) => context.read<MatchCubit>().load());
        },
        child: const Icon(
          Icons.add,
          color: ProjectColors.createButtonIconColor,
        ),
      ),
    );
  }
}
