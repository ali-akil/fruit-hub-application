import 'package:flutter/material.dart';
import 'package:friut_app/core/widgets/build_appbar_widget.dart';
import 'package:friut_app/features/best_selling_fruit/presentation/views/widgets/best_selling_view_body.dart';
import 'package:friut_app/generated/l10n.dart';

class BestSellingView extends StatelessWidget {
  const BestSellingView({super.key});
  static const routeName = 'best_selling_view';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: appbar_widget(context, title: S.of(context).bestSeler),
        body: BestSellingViewBody());
  }
}
