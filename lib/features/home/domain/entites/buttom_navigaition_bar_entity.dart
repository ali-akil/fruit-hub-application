import 'package:friut_app/core/utils/app_images.dart';

class ButtomNavigaitionBarEntity {
  final String inActiveImage, activeImage;
  final String name;
  ButtomNavigaitionBarEntity(
      {required this.inActiveImage,
      required this.activeImage,
      required this.name});
  static List<ButtomNavigaitionBarEntity> get bottomNavigationBarItems {
    return [
      ButtomNavigaitionBarEntity(
          activeImage: Assets.imagesVuesaxBoldHome,
          inActiveImage: Assets.imagesVuesaxOutlineHome,
          name: "الرئيسية"),
      ButtomNavigaitionBarEntity(
          activeImage: Assets.imagesVuesaxBoldProducts,
          inActiveImage: Assets.imagesVuesaxOutlineProducts,
          name: "المنتجات"),
      ButtomNavigaitionBarEntity(
          activeImage: Assets.imagesVuesaxBoldShoppingCart,
          inActiveImage: Assets.imagesVuesaxOutlineShoppingCart,
          name: "سلة التسوق"),
      ButtomNavigaitionBarEntity(
          activeImage: Assets.imagesVuesaxBoldUser,
          inActiveImage: Assets.imagesVuesaxOutlineUser,
          name: "حسابي"),
    ];
  }
}
