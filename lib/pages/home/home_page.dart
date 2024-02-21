import 'package:diplomka/cubit/home_page/home_page_cubit.dart';
import 'package:diplomka/entities/di.dart';
import 'package:diplomka/widgets/home_content/home_page_content_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => getIt.get<HomePageCubit>()..load(),
      child: const HomePageContentView(),
    );
  }
}
