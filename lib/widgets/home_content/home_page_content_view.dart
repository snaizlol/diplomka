import 'package:diplomka/components/fotbalkee_card.dart';
import 'package:diplomka/cubit/home_page_cubit/home_page_cubit.dart';
import 'package:diplomka/cubit/home_page_cubit/home_page_state.dart';
import 'package:diplomka/pages/detail/detail_page.dart';
import 'package:diplomka/theme/theme_colors.dart';
import 'package:diplomka/theme/theme_text_styles.dart';
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
        if (state is HomePageStateLoading) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else {
          return Scaffold(
            appBar: AppBar(
              backgroundColor: ProjectColors.headerColor,
              title: const Center(
                child: Text(
                  'Home',
                  style: CustomTextStyles.header,
                ),
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
                  tabs: [
                    Tab(
                      child: Text(
                        tabBarNames[0],
                        style: CustomTextStyles.tab,
                      ),
                    ),
                    Tab(
                      child: Text(
                        tabBarNames[1],
                        style: CustomTextStyles.tab,
                      ),
                    ),
                    Tab(
                      child: Text(
                        tabBarNames[2],
                        style: CustomTextStyles.tab,
                      ),
                    )
                  ],
                ),
                Expanded(
                  child: TabBarView(
                    controller: tabController,
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: ListView.builder(
                          itemCount: state.list.length,
                          itemBuilder: (context, index) {
                            if (state.list[index].foosball.brand ==
                                tabBarNames[0]) {
                              return PubCardWidget(
                                name: state.list[index].name,
                                rating: state.list[index].rating,
                                adress: state.list[index].adress,
                                imageUrl: state.list[index].pubImage,
                                callback: () {
                                  context.pushNamed(
                                    DetailPage.routeName,
                                    pathParameters: {
                                      'id': (state.list[index].id).toString(),
                                    },
                                  );
                                },
                              );
                            } else {
                              return const SizedBox.shrink();
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: state.list.length,
                          itemBuilder: (context, index) {
                            if (state.list[index].foosball.brand ==
                                tabBarNames[1]) {
                              return PubCardWidget(
                                name: state.list[index].name,
                                rating: state.list[index].rating,
                                adress: state.list[index].adress,
                                imageUrl: state.list[index].pubImage,
                                callback: () {
                                  context.pushNamed(
                                    DetailPage.routeName,
                                    pathParameters: {
                                      'id': (state.list[index].id).toString(),
                                    },
                                  );
                                },
                              );
                            } else {
                              return const SizedBox.shrink();
                            }
                          },
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 40),
                        child: ListView.builder(
                          shrinkWrap: true,
                          itemCount: state.list.length,
                          itemBuilder: (context, index) {
                            if (state.list[index].foosball.brand !=
                                    tabBarNames[0] &&
                                state.list[index].foosball.brand !=
                                    tabBarNames[1]) {
                              return PubCardWidget(
                                name: state.list[index].name,
                                rating: state.list[index].rating,
                                adress: state.list[index].adress,
                                imageUrl: state.list[index].pubImage,
                                callback: () {
                                  context.pushNamed(
                                    DetailPage.routeName,
                                    pathParameters: {
                                      'id': (state.list[index].id).toString(),
                                    },
                                  );
                                },
                              );
                            } else {
                              return const SizedBox.shrink();
                            }
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
      },
    );
  }
}
