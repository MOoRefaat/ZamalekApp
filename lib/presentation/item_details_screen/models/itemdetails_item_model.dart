import '../../../core/app_export.dart';

/// This class is used in the [itemdetails_item_widget] screen.
class ItemdetailsItemModel {
  ItemdetailsItemModel({
    this.rectangle,
    this.id,
  }) {
    rectangle = rectangle ?? ImageConstant.imgRectangle18518;
    id = id ?? "";
  }

  String? rectangle;

  String? id;
}
