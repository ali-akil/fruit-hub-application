import 'package:flutter/material.dart';
import 'package:friut_app/core/utils/app_text_styles.dart';
import 'package:friut_app/features/home/presentation/views/widgets/best_selling_gridview.dart';
import 'package:friut_app/generated/l10n.dart';

class BestSellingViewBody extends StatelessWidget {
  const BestSellingViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                S.of(context).bestSeler,
                style: TextStyles.bold16,
              ),
              SizedBox(
                height: 10,
              )
            ],
          ),
        ),
        BestSellingGridView()
      ],
    );
  }
}
