// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import 'four_item_model.dart';

/// This class defines the variables used in the [score_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ScoreModel extends Equatable {
  ScoreModel({this.fourItemList = const []}) {}

  List<FourItemModel> fourItemList;

  ScoreModel copyWith({List<FourItemModel>? fourItemList}) {
    return ScoreModel(
      fourItemList: fourItemList ?? this.fourItemList,
    );
  }

  @override
  List<Object?> get props => [fourItemList];
}
