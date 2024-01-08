import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy1_item_widget] screen.
class Viewhierarchy1ItemModel {
  Viewhierarchy1ItemModel({
    this.titleText1,
    this.titleText2,
    this.titleText3,
    this.dateText,
    this.timeText,
    this.pyramidsImage,
    this.titleText4,
    this.id,
  }) {
    titleText1 = titleText1 ?? "الزمالك";
    titleText2 = titleText2 ?? "الدوري المصري الممتاز";
    titleText3 = titleText3 ?? "الأسبوع 10";
    dateText = dateText ?? "21 سبتمبر 2023";
    timeText = timeText ?? "09:00 م";
    pyramidsImage = pyramidsImage ?? ImageConstant.imgImage51;
    titleText4 = titleText4 ?? "بيراميدز";
    id = id ?? "";
  }

  String? titleText1;

  String? titleText2;

  String? titleText3;

  String? dateText;

  String? timeText;

  String? pyramidsImage;

  String? titleText4;

  String? id;
}
