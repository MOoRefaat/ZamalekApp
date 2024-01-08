import '../../../core/app_export.dart';

/// This class is used in the [itemgrid_item_widget] screen.
class ItemgridItemModel {
  ItemgridItemModel({
    this.image,
    this.text,
    this.currency,
    this.amount,
    this.id,
  }) {
    image = image ?? ImageConstant.imgDownload16R;
    text = text ?? "قميص مباراة الزمالك الأحتياطي";
    currency = currency ?? "ج.م";
    amount = amount ?? "150";
    id = id ?? "";
  }

  String? image;

  String? text;

  String? currency;

  String? amount;

  String? id;
}
