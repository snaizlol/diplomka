import 'package:diplomka/pages/articles_page.dart';
import 'package:diplomka/pages/home_page.dart';
import 'package:diplomka/pages/initial_page.dart';
import 'package:diplomka/pages/search_page.dart';
import 'package:diplomka/widgets/home_page_content_view.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class AppNavigation {
  AppNavigation._();

  static String initialRouter = '/home';

  static final _rootNavigatorKey = GlobalKey<NavigatorState>();
  static final _rootNavigatorHome =
      GlobalKey<NavigatorState>(debugLabel: 'home');
  static final _rootNavigatorSearch =
      GlobalKey<NavigatorState>(debugLabel: 'search');
  static final _rootNavigatorArticles =
      GlobalKey<NavigatorState>(debugLabel: 'articles');

  static final GoRouter router = GoRouter(
      initialLocation: initialRouter,
      navigatorKey: _rootNavigatorKey,
      routes: [
        StatefulShellRoute.indexedStack(
          builder: (context, state, navigationShell) {
            return HomePageContentView(
              navigationShell: navigationShell,
            );
          },
          branches: <StatefulShellBranch>[
            StatefulShellBranch(
              navigatorKey: _rootNavigatorHome,
              routes: [
                GoRoute(
                  path: '/home',
                  name: 'Home',
                  builder: (context, state) {
                    return InitialPage(
                      key: state.pageKey,
                    );
                  },
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _rootNavigatorSearch,
              routes: [
                GoRoute(
                  path: '/search',
                  name: 'Search',
                  builder: (context, state) {
                    return SearchPage(
                      key: state.pageKey,
                    );
                  },
                ),
              ],
            ),
            StatefulShellBranch(
              navigatorKey: _rootNavigatorArticles,
              routes: [
                GoRoute(
                  path: '/articles',
                  name: 'Articles',
                  builder: (context, state) {
                    return ArticlesPage(
                      key: state.pageKey,
                    );
                  },
                ),
              ],
            )
          ],
        ),
      ]);
}
