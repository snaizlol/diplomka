import 'package:diplomka/cubit/detail_page_cubit/detail_page_cubit.dart';
import 'package:diplomka/cubit/detail_page_cubit/detail_page_state.dart';
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
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 20),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            color: const Color.fromARGB(255, 228, 228, 228),
                          ),
                          height: height,
                          width: width,
                        ),
                        const SizedBox(height: 20),
                        Text(
                          state.pub.name,
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Adress : ${state.pub.adress}'),
                        Text('Rating : ${state.pub.rating}'),
                        for (var i = 0; i < state.pub.beers.length; i++)
                          Text(
                            '${state.pub.beers[i].name} : ${state.pub.beers[i].price} czk',
                          ),
                        const SizedBox(
                          height: 40,
                        ),
                        const Text('Tables :'),
                        const SizedBox(
                          height: 20,
                        ),
                        ClipRRect(
                          borderRadius: BorderRadius.all(Radius.circular(12)),
                          child: SizedBox(
                            height: 120,
                            child: ListView.separated(
                              separatorBuilder: (context, index) {
                                return SizedBox(
                                  width: 20,
                                );
                              },
                              itemCount: state.pub.tableImages.length,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return Container(
                                  height: 120,
                                  width: 150,
                                  color: Color.fromARGB(255, 228, 228, 228),
                                );
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
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
