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
                          const SizedBox(
                            height: 20,
                          ),
                          ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              child: Image.asset(state.pub.pubImage)),
                          const SizedBox(height: 20),
                          Row(
                            children: [
                              const Text(
                                'Adress : ',
                                style: CustomTextStyles.regularTextBold,
                              ),
                              Text(
                                state.pub.adress,
                                style: CustomTextStyles.regularText,
                              )
                            ],
                          ),
                          Row(
                            children: [
                              const Text(
                                'Rating : ',
                                style: CustomTextStyles.regularTextBold,
                              ),
                              Text(
                                '${state.pub.rating} ',
                                style: CustomTextStyles.regularText,
                              ),
                              const Icon(
                                Icons.star,
                                color: Colors.amber,
                                size: 18,
                              ),
                            ],
                          ),
                          for (var i = 0; i < state.pub.beers.length; i++)
                            Row(
                              children: [
                                Text(
                                  '${state.pub.beers[i].name} : ',
                                  style: CustomTextStyles.regularTextBold,
                                ),
                                Text(
                                  '${state.pub.beers[i].price} czk',
                                  style: CustomTextStyles.regularText,
                                )
                              ],
                            ),
                          Row(
                            children: [
                              const Text(
                                'Type of table: ',
                                style: CustomTextStyles.regularTextBold,
                              ),
                              Text(
                                state.pub.foosball.brand,
                                style: CustomTextStyles.regularText,
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 20,
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
