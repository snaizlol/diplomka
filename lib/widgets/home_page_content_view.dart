import 'package:diplomka/components/fotbalkee_card.dart';
import 'package:diplomka/cubit/home_page/home_page_cubit.dart';
import 'package:diplomka/cubit/home_page/home_page_state.dart';
import 'package:diplomka/entities/di.dart';
import 'package:diplomka/entities/pub_entity.dart';
import 'package:diplomka/pages/articles_page.dart';
import 'package:diplomka/pages/detail_page.dart';
import 'package:diplomka/pages/home_page.dart';
import 'package:diplomka/pages/search_page.dart';
import 'package:diplomka/repositories/mockup_fotbalkee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomePageContentView extends StatefulWidget {
  const HomePageContentView({
    super.key,
  });

  @override
  State<HomePageContentView> createState() => _HomePageContentViewState();
}

class _HomePageContentViewState extends State<HomePageContentView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 206, 206, 206),
      appBar: AppBar(
        title: const Text('Home Page'),
      ),
      body: Center(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 40),
        child: Container(
          height: 500,
          child: BlocBuilder<HomePageCubit, HomePageState>(
            builder: (context, state) {
              return ListView.separated(
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 20,
                  );
                },
                itemCount: state.list.length,
                itemBuilder: (context, index) {
                  return CardWidget(
                      name: state.list[index].name,
                      rating: state.list[index].rating,
                      adress: state.list[index].adress,
                      index: index,
                      callback: () {
                        context
                            .pushNamed(DetailPage.routeName, pathParameters: {
                          'id': (state.list[index].id).toString(),
                        });
                      });
                },
              );
            },
          ),
        ),
      )),
    );
  }
}
