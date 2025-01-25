import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:friut_app/features/home/domain/entites/buttom_navigaition_bar_entity.dart';

class InActiveItem extends StatelessWidget {
  const InActiveItem({super.key, required this.buttomNavigaitionBarEntity});
  final ButtomNavigaitionBarEntity buttomNavigaitionBarEntity;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16),
      child: Container(
          height: 25,
          child: SvgPicture.asset(buttomNavigaitionBarEntity.inActiveImage)),
    );
  }
}
