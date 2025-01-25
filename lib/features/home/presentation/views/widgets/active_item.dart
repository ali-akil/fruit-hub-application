import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:friut_app/core/utils/app_colors.dart';
import 'package:friut_app/core/utils/app_text_styles.dart';
import 'package:friut_app/features/home/domain/entites/buttom_navigaition_bar_entity.dart';

class ActiveItem extends StatelessWidget {
  const ActiveItem({super.key, required this.buttomNavigaitionBarEntity});

  final ButtomNavigaitionBarEntity buttomNavigaitionBarEntity;

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 5),
      height: 30,
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          color: Color(0xFFEEEEEE)),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircleAvatar(
            backgroundColor: AppColors.primaryColor,
            child: SvgPicture.asset(
              buttomNavigaitionBarEntity.activeImage,
              height: 20,
            ),
          ),
          SizedBox(
            width: 3,
          ),
          Center(
            child: Text(
              buttomNavigaitionBarEntity.name,
              style:
                  TextStyles.semiBold16.copyWith(color: AppColors.primaryColor),
            ),
          )
        ],
      ),
    );
  }
}
