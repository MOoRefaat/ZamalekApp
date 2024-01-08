import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.image,
    this.title,
    this.date,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle18511;
    title =
        title ?? "موعد مباراة الزمالك أمام بيراميدز في الدوري والقناة الناقلة";
    date = date ?? "20 سبتمبر 2023";
    id = id ?? "";
  }

  String? image;

  String? title;

  String? date;

  String? id;
}
