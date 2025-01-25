import 'package:flutter/material.dart';
import 'package:friut_app/core/utils/app_colors.dart';
import 'package:friut_app/core/utils/app_images.dart';
import 'package:friut_app/core/utils/app_text_styles.dart';

class FruitItem extends StatelessWidget {
  const FruitItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(4)),
          color: Color(0xFFF3F5F7)),
      child: Stack(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconButton(onPressed: () {}, icon: Icon(Icons.favorite_border)),
            ],
          ),
          Positioned.fill(
              child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              Image.asset(Assets.imagesWatermelonTest),
              SizedBox(
                height: 24,
              ),
              ListTile(
                  title: Text(
                    "بطيخ",
                    style: TextStyles.semiBold16,
                  ),
                  subtitle: Text.rich(TextSpan(children: [
                    TextSpan(
                        text: "30 جنيه",
                        style: TextStyles.bold13
                            .copyWith(color: AppColors.secondryColor)),
                    TextSpan(
                        text: "/",
                        style: TextStyles.bold13
                            .copyWith(color: AppColors.lightSecondryColor)),
                    TextSpan(
                        text: "الكيلو",
                        style: TextStyles.bold13
                            .copyWith(color: AppColors.lightSecondryColor)),
                  ])),
                  trailing: CircleAvatar(
                    backgroundColor: AppColors.primaryColor,
                    child: Icon(Icons.add, color: Colors.white),
                  )),
            ],
          ))
        ],
      ),
    );
  }
}
