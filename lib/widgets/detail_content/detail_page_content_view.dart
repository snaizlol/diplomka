import 'package:diplomka/cubit/detail_page/detail_page_cubit.dart';
import 'package:diplomka/cubit/detail_page/detail_page_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class DetailPageContentView extends StatelessWidget {
  const DetailPageContentView({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width - 40;
    final height = MediaQuery.of(context).size.height / 4;
    return BlocBuilder<DetailPageCubit, DetailPageState>(
      builder: (context, state) {
        return Builder(
          builder: (context) {
            if (state is DetailPageStateLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (state is DetailPageStateLoaded) {
              return Scaffold(
                appBar: AppBar(
                  title: Text(state.pub.name),
                  backgroundColor: const Color.fromARGB(100, 243, 218, 189),
                ),
                body: Center(
                    child: Column(
                  children: [
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20.0),
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(12),
                          color: Color.fromARGB(255, 228, 228, 228),
                        ),
                        height: height,
                        width: width,
                      ),
                    ),
                    Text('name : ${state.pub.name} '),
                    Text('adress : ${state.pub.adress}'),
                    Text('rating : ${state.pub.rating}'),
                    for (var i = 0; i < state.pub.beers.length; i++)
                      Text(
                          '${state.pub.beers[i].name} : ${state.pub.beers[i].price}czk'),
                  ],
                )),
              );
            } else {
              return const Placeholder();
            }
          },
        );
      },
    );
  }
}
