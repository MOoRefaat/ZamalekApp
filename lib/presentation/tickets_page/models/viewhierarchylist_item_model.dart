import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchylist_item_widget] screen.
class ViewhierarchylistItemModel {
  ViewhierarchylistItemModel({
    this.dateImage,
    this.matchImage,
    this.matchImage1,
    this.dateText,
    this.dateImage1,
    this.stadiumText,
    this.stadiumImage,
    this.id,
  }) {
    dateImage = dateImage ?? ImageConstant.imgEllipse45200x167;
    matchImage = matchImage ?? ImageConstant.imgImage3;
    matchImage1 = matchImage1 ?? ImageConstant.imgRectangle10422;
    dateText = dateText ?? "10 اكتوبر 2023";
    dateImage1 = dateImage1 ?? ImageConstant.imgFrameOnprimary;
    stadiumText = stadiumText ?? "ستاد القاهرة الدولي";
    stadiumImage = stadiumImage ?? ImageConstant.imgFrameOnprimary24x24;
    id = id ?? "";
  }

  String? dateImage;

  String? matchImage;

  String? matchImage1;

  String? dateText;

  String? dateImage1;

  String? stadiumText;

  String? stadiumImage;

  String? id;
}
