import 'package:diplomka/cubit/detail_page/detail_page_cubit.dart';
import 'package:diplomka/cubit/detail_page/detail_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailPageContentView extends StatelessWidget {
  const DetailPageContentView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DetailPageCubit, DetailPageState>(
      builder: (context, state) {
        return Builder(builder: (context) {
          if (state is DetailPageStateLoading) {
            return const Center(child: CircularProgressIndicator());
          } else if (state is DetailPageStateLoaded) {
            return Scaffold(
              appBar: AppBar(
                title: Text('Detail Page'),
              ),
              backgroundColor: Colors.amber,
              body: Center(
                  child: Container(
                child: Text('${state.pub.name}'),
              )),
            );
          } else
            return Placeholder();
        });
      },
    );
  }
}
