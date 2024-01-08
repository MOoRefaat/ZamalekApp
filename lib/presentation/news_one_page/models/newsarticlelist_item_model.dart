import '../../../core/app_export.dart';

/// This class is used in the [newsarticlelist_item_widget] screen.
class NewsarticlelistItemModel {
  NewsarticlelistItemModel({
    this.title,
    this.date,
    this.image,
    this.id,
  }) {
    title = title ?? "نكشف سبب غياب 7 لاعبين عن قائمة الزمالك أمام بيراميدز";
    date = date ?? "20 سبتمبر 2023";
    image = image ?? ImageConstant.imgRectangle1851180x100;
    id = id ?? "";
  }

  String? title;

  String? date;

  String? image;

  String? id;
}
