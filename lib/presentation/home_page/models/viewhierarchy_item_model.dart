import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {
  ViewhierarchyItemModel({
    this.titleText,
    this.liveText,
    this.scoreText1,
    this.colonText,
    this.scoreText2,
    this.leagueTitleText,
    this.weekText,
    this.ismailiImage,
    this.ismailiTitleText,
    this.id,
  }) {
    titleText = titleText ?? "الزمالك";
    liveText = liveText ?? "مباشر";
    scoreText1 = scoreText1 ?? "2";
    colonText = colonText ?? ":";
    scoreText2 = scoreText2 ?? "1";
    leagueTitleText = leagueTitleText ?? "الدوري المصري الممتاز";
    weekText = weekText ?? "الأسبوع 10";
    ismailiImage = ismailiImage ?? ImageConstant.imgImage5;
    ismailiTitleText = ismailiTitleText ?? "الإسماعيلي";
    id = id ?? "";
  }

  String? titleText;

  String? liveText;

  String? scoreText1;

  String? colonText;

  String? scoreText2;

  String? leagueTitleText;

  String? weekText;

  String? ismailiImage;

  String? ismailiTitleText;

  String? id;
}
