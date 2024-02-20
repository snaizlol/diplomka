import 'package:diplomka/components/fotbalkee_card.dart';
import 'package:diplomka/cubit/home_page_cubit.dart';
import 'package:diplomka/cubit/home_page_state.dart';
import 'package:diplomka/entities/di.dart';
import 'package:diplomka/entities/pub_entity.dart';
import 'package:diplomka/pages/articles_page.dart';
import 'package:diplomka/pages/home_page.dart';
import 'package:diplomka/pages/search_page.dart';
import 'package:diplomka/repositories/mockup_fotbalkee.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';

class HomePageContentView extends StatefulWidget {
  const HomePageContentView({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  State<HomePageContentView> createState() => _HomePageContentViewState();
}

class _HomePageContentViewState extends State<HomePageContentView> {
  void _goToLocation(int index) {
    widget.navigationShell.goBranch(index,
        initialLocation: index == widget.navigationShell.currentIndex);
  }

  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<HomePageCubit>()..load(),
      child: Scaffold(
        body: SizedBox(
          child: widget.navigationShell,
        ),
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _currentIndex,
          items: const [
            BottomNavigationBarItem(
              label: 'Home',
              icon: Icon(Icons.home),
            ),
            BottomNavigationBarItem(
              label: 'Search',
              icon: Icon(Icons.search),
            ),
            BottomNavigationBarItem(
              label: 'Articles',
              icon: Icon(Icons.article),
            ),
          ],
          onTap: (index) {
            setState(
              () {
                _currentIndex = index;
              },
            );

            _goToLocation(_currentIndex);
          },
        ),
        // floatingActionButton: ElevatedButton(
        //     onPressed: () {
        //       context.read<HomePageCubit>().addPub();
        //     },
        //     child: Text('what')),
      ),
    );
  }
}
