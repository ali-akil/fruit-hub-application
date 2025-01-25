import 'package:flutter/material.dart';
import 'package:friut_app/constans.dart';
import 'package:friut_app/core/widgets/search_text_field.dart';
import 'package:friut_app/features/home/presentation/views/widgets/Custom_home%20_app_bar.dart';
import 'package:friut_app/features/home/presentation/views/widgets/best_selling_header.dart';
import 'package:friut_app/features/home/presentation/views/widgets/featured_list.dart';
import 'package:friut_app/features/home/presentation/views/widgets/best_selling_gridview.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
/*************  ✨ Codeium Command ⭐  *************/
  /// Builds the UI for the home view, providing a scrollable layout with various
  /// widgets displaying the app bar, search field, featured list, best selling
  /// header, and a grid of fruit items. The content is padded horizontally, and
  /// utilizes a vertical CustomScrollView with slivers to structure the layout.

/******  f7710c64-f0da-41f3-a8a7-423b5edf554f  *******/
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: CustomScrollView(scrollDirection: Axis.vertical, slivers: [
        SliverToBoxAdapter(
          child: Column(
            children: [
              CustomHomeAppBar(),
              SizedBox(height: KTopPadding),
              SearchTextField(),
              SizedBox(
                height: 16,
              ),
              FeaturedList(),
              SizedBox(
                height: 12,
              ),
              BestSellingHeader(),
              SizedBox(
                height: 12,
              ),
              SizedBox(
                height: 12,
              ),
            ],
          ),
        ),
        BestSellingGridView()
      ]),
    );
  }
}
