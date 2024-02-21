import 'package:diplomka/components/fotbalkee_card.dart';
import 'package:diplomka/constants/constants.dart';
import 'package:diplomka/cubit/home_page/home_page_cubit.dart';
import 'package:diplomka/cubit/home_page/home_page_state.dart';
import 'package:diplomka/pages/detail/detail_page.dart';
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
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(100, 243, 218, 189),
        title: Text(
          'Home Page',
        ),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 40),
          child: BlocBuilder<HomePageCubit, HomePageState>(
            builder: (context, state) {
              return ListView.separated(
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return const SizedBox(
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
                      context.pushNamed(
                        DetailPage.routeName,
                        pathParameters: {
                          'id': (state.list[index].id).toString(),
                        },
                      );
                    },
                  );
                },
              );
            },
          ),
        ),
      ),
    );
  }
}
