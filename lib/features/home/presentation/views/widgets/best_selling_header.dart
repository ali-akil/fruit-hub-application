import 'package:flutter/material.dart';
import 'package:friut_app/core/utils/app_text_styles.dart';
import 'package:friut_app/features/best_selling_fruit/presentation/views/best_selling_view.dart';
import 'package:friut_app/generated/l10n.dart';

class BestSellingHeader extends StatelessWidget {
  const BestSellingHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, BestSellingView.routeName);
      },
      child: Row(
        children: [
          Text(
            S.of(context).bestSeler,
            style: TextStyles.bold16,
          ),
          Spacer(),
          Text(S.of(context).more,
              textAlign: TextAlign.center, style: TextStyles.regular13),
        ],
      ),
    );
  }
}
