import 'package:diplomka/cubit/pub_detail_page_cubit/detail_page_cubit.dart';
import 'package:diplomka/cubit/pub_detail_page_cubit/detail_page_state.dart';
import 'package:diplomka/theme/theme_colors.dart';
import 'package:diplomka/theme/theme_text_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:insta_image_viewer/insta_image_viewer.dart';

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
                  title: Text(
                    state.pub.name,
                    style: CustomTextStyles.header,
                  ),
                  backgroundColor: ProjectColors.headerColor,
                ),
                body: Center(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
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
                            'Adress : ${state.pub.adress}',
                            style: CustomTextStyles.regularText,
                          ),
                          Text(
                            'Rating : ${state.pub.rating}',
                            style: CustomTextStyles.regularText,
                          ),
                          for (var i = 0; i < state.pub.beers.length; i++)
                            Text(
                              '${state.pub.beers[i].name} : ${state.pub.beers[i].price} czk',
                              style: CustomTextStyles.regularText,
                            ),
                          Text(
                            'Type of table: ${state.pub.fotbalek.brand}',
                            style: CustomTextStyles.regularText,
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          const Text(
                            'Tables :',
                            style: CustomTextStyles.headline2,
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          SizedBox(
                            height: 120,
                            child: ListView.separated(
                              separatorBuilder: (context, index) {
                                return const SizedBox(
                                  width: 20,
                                );
                              },
                              itemCount: state.pub.tableImages.length,
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) {
                                return InstaImageViewer(
                                  child: ClipRRect(
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(12)),
                                    child: Image.asset(
                                        state.pub.tableImages[index]),
                                  ),
                                );
                              },
                            ),
                          )
                        ],
                      ),
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
