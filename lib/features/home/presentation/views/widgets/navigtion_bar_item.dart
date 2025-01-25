import 'package:flutter/material.dart';
import 'package:friut_app/features/home/domain/entites/buttom_navigaition_bar_entity.dart';
import 'package:friut_app/features/home/presentation/views/widgets/active_item.dart';
import 'package:friut_app/features/home/presentation/views/widgets/inactive_item.dart';

class NavigationBarItem extends StatelessWidget {
  const NavigationBarItem(
      {super.key,
      required this.isSelected,
      required this.buttomNavigaitionBarEntity});
  final bool isSelected;
  final ButtomNavigaitionBarEntity buttomNavigaitionBarEntity;
  @override
  Widget build(BuildContext context) {
    if (isSelected)
      return ActiveItem(buttomNavigaitionBarEntity: buttomNavigaitionBarEntity);
    else
      return InActiveItem(
          buttomNavigaitionBarEntity: buttomNavigaitionBarEntity);
  }
}
