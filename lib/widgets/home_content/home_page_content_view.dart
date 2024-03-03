import 'package:diplomka/components/fotbalkee_card.dart';
import 'package:diplomka/constants/constants.dart';
import 'package:diplomka/cubit/home_page_cubit/home_page_cubit.dart';
import 'package:diplomka/cubit/home_page_cubit/home_page_state.dart';
import 'package:diplomka/entities/pub_entity.dart';
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

class _HomePageContentViewState extends State<HomePageContentView>
    with TickerProviderStateMixin {
  late TabController tabController;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 3, vsync: this);
  }

  final tabBarNames = ['Rosengaart', 'Leonhaart', 'Others'];

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomePageCubit, HomePageState>(
      builder: (context, state) {
        return Builder(
          builder: (context) {
            if (state is HomePageStateLoading) {
              const Center(
                child: CircularProgressIndicator(),
              );
            } else if (state is HomePageStateLoaded) {
              return Scaffold(
                appBar: AppBar(
                  backgroundColor: const Color.fromARGB(100, 243, 218, 189),
                  title: const Text(
                    'Home Page',
                  ),
                ),
                body: Column(
                  children: [
                    TabBar(
                      controller: tabController,
                      labelColor: Colors.black,
                      unselectedLabelColor: Colors.grey,
                      indicator: const UnderlineTabIndicator(
                        borderSide: BorderSide(
                          color: Colors.black,
                        ),
                      ),
                      tabs: const [
                        Tab(
                          text: 'Rosengaart',
                        ),
                        Tab(text: 'Leonhaart'),
                        Tab(
                          text: 'Others',
                        )
                      ],
                    ),
                    Expanded(
                      child: TabBarView(
                        controller: tabController,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 40),
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
                                    if (state.list[index].fotbalek.brand ==
                                        tabBarNames[0]) {
                                      return CardWidget(
                                        name: state.list[index].name,
                                        rating: state.list[index].rating,
                                        adress: state.list[index].adress,
                                        index: index,
                                        callback: () {
                                          context.pushNamed(
                                            DetailPage.routeName,
                                            pathParameters: {
                                              'id': (state.list[index].id)
                                                  .toString(),
                                            },
                                          );
                                        },
                                      );
                                    } else {
                                      return const SizedBox.shrink();
                                    }
                                  },
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 40),
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
                                    if (state.list[index].fotbalek.brand ==
                                        tabBarNames[1]) {
                                      return CardWidget(
                                        name: state.list[index].name,
                                        rating: state.list[index].rating,
                                        adress: state.list[index].adress,
                                        index: index,
                                        callback: () {
                                          context.pushNamed(
                                            DetailPage.routeName,
                                            pathParameters: {
                                              'id': (state.list[index].id)
                                                  .toString(),
                                            },
                                          );
                                        },
                                      );
                                    } else {
                                      return const SizedBox.shrink();
                                    }
                                  },
                                );
                              },
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 40, vertical: 40),
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
                                    if (state.list[index].fotbalek.brand !=
                                            tabBarNames[0] &&
                                        state.list[index].fotbalek.brand !=
                                            tabBarNames[1]) {
                                      return CardWidget(
                                        name: state.list[index].name,
                                        rating: state.list[index].rating,
                                        adress: state.list[index].adress,
                                        index: index,
                                        callback: () {
                                          context.pushNamed(
                                            DetailPage.routeName,
                                            pathParameters: {
                                              'id': (state.list[index].id)
                                                  .toString(),
                                            },
                                          );
                                        },
                                      );
                                    } else {
                                      return const SizedBox.shrink();
                                    }
                                  },
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              );
            }
            return const Placeholder();
          },
        );
      },
    );
  }
}
