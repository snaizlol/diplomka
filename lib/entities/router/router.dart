import 'package:diplomka/pages/articles/articles_detail_page.dart';
import 'package:diplomka/pages/articles/articles_page.dart';
import 'package:diplomka/pages/create_match/create_match_page.dart';
import 'package:diplomka/pages/detail/detail_page.dart';
import 'package:diplomka/pages/home/home_page.dart';
import 'package:diplomka/pages/initial/initial_page.dart';
import 'package:diplomka/pages/match_detail_page/match_detail_page.dart';
import 'package:diplomka/pages/scoreboard/scoreboard_page.dart';
import 'package:go_router/go_router.dart';

class AppNavigation {
  AppNavigation._();

  static String initialRouter = '/home';
  static final GoRouter router = GoRouter(
    initialLocation: initialRouter,
    routes: [
      StatefulShellRoute.indexedStack(
        builder: (context, state, navigationShell) {
          return InitialPage(
            navigationShell: navigationShell,
          );
        },
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/scoreboard',
                name: 'Scoreboard',
                builder: (context, state) {
                  return ScoreboardPage(
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
                  GoRoute(
                    path: MatchDetailPage.routePath,
                    name: MatchDetailPage.routeName,
                    builder: (context, state) => MatchDetailPage(
                      key: state.pageKey,
                      id: state.pathParameters['id'] ?? '0',
                    ),
                  )
                ],
              ),
            ],
          ),
          StatefulShellBranch(
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
            routes: [
              GoRoute(
                path: '/articles',
                name: 'Articles',
                builder: (context, state) {
                  return ArticlesPage(
                    key: state.pageKey,
                  );
                },
                routes: [
                  GoRoute(
                    name: ArticlesDetailPage.routeName,
                    path: ArticlesDetailPage.routePath,
                    builder: (context, state) => ArticlesDetailPage(
                      key: state.pageKey,
                      id: int.tryParse(
                        '${state.pathParameters['id']}',
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
