import 'package:diplomka/pages/articles/articles_page.dart';
import 'package:diplomka/pages/create_match/create_match_page.dart';
import 'package:diplomka/pages/detail/detail_page.dart';
import 'package:diplomka/pages/home/home_page.dart';
import 'package:diplomka/pages/initial/initial_page.dart';
import 'package:diplomka/pages/search/search_page.dart';
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
            return InitialPage(
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
                    return HomePage(
                      key: state.pageKey,
                    );
                  },
                  routes: [
                    GoRoute(
                      name: DetailPage.routeName,
                      path: DetailPage.routePath,
                      builder: (context, state) => DetailPage(
                        key: state.pageKey,
                        id: int.tryParse('${state.pathParameters['id']}'),
                      ),
                    )
                  ],
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
                  routes: [
                    GoRoute(
                      path: CreateMatchPage.routePath,
                      name: CreateMatchPage.routeName,
                      builder: (context, state) {
                        return CreateMatchPage(
                          key: state.pageKey,
                        );
                      },
                    ),
                  ],
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
            ),
          ],
        ),
      ]);
}
