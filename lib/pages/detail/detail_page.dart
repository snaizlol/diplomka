import 'package:diplomka/cubit/pub_detail_page_cubit/detail_page_cubit.dart';
import 'package:diplomka/entities/di.dart';
import 'package:diplomka/widgets/detail_content/detail_page_content_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailPage extends StatelessWidget {
  const DetailPage({super.key, this.id});

  static const routeName = 'hospoda';
  static const routePath = 'hospoda/detail/:id';

  final int? id;

  @override
  Widget build(BuildContext context) => BlocProvider(
        create: (context) => getIt.get<DetailPageCubit>()..load(id ?? 0),
        child: const DetailPageContentView(),
      );
}
