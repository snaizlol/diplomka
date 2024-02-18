import 'package:diplomka/components/fotbalkee_card.dart';
import 'package:diplomka/cubit/home_page_cubit.dart';
import 'package:diplomka/cubit/home_page_state.dart';
import 'package:diplomka/entities/di.dart';
import 'package:diplomka/entities/pub_entity.dart';
import 'package:diplomka/repositories/mockup_fotbalkee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePageContentView extends StatelessWidget {
  const HomePageContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: BlocBuilder<HomePageCubit, HomePageState>(
          builder: (context, state) {
            if (state is HomePageStateLoading) {
              return Center(child: CircularProgressIndicator());
            } else if (state is HomePageStateLoaded) {
              return BlocBuilder<HomePageCubit, HomePageState>(
                builder: (context, state) {
                  return Container(
                    height: 400,
                    child: ListView.builder(
                      itemCount: state.list.length,
                      itemBuilder: (context, index) {
                        return Text(state.list[index].name);
                      },
                    ),
                  );
                },
              );
            } else {
              return const Placeholder();
            }
          },
        ),
      ),
      floatingActionButton: ElevatedButton(
          onPressed: () {
            context.read<HomePageCubit>().addPub();
          },
          child: Text('what')),
    );
  }
}
