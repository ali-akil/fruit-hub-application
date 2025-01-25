import 'package:flutter/material.dart';
import 'package:friut_app/features/home/domain/entites/buttom_navigaition_bar_entity.dart';
import 'package:friut_app/features/home/presentation/views/widgets/navigtion_bar_item.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 375,
        height: 70,
        decoration: ShapeDecoration(
            shadows: [
              BoxShadow(
                  color: Color(0x19000000),
                  blurRadius: 25,
                  offset: Offset(0, -2),
                  spreadRadius: 0)
            ],
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(30),
                    topRight: Radius.circular(30)))),
        child: Row(
            children: ButtomNavigaitionBarEntity.bottomNavigationBarItems
                .asMap()
                .entries
                .map((e) {
          var index = e.key;
          var entity = e.value;
          return Expanded(
            flex: selectedIndex == index ? 4 : 2,
            child: GestureDetector(
              onTap: () {
                setState(() {
                  selectedIndex = index;
                });
              },
              child: NavigationBarItem(
                  isSelected: selectedIndex == index,
                  buttomNavigaitionBarEntity: entity),
            ),
          );
        }).toList()));
  }
}
