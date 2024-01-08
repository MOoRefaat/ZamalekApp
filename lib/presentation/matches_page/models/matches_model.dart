// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'viewhierarchy1_item_model.dart';

/// This class defines the variables used in the [matches_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MatchesModel extends Equatable {
  MatchesModel({this.viewhierarchy1ItemList = const []}) {}

  List<Viewhierarchy1ItemModel> viewhierarchy1ItemList;

  MatchesModel copyWith(
      {List<Viewhierarchy1ItemModel>? viewhierarchy1ItemList}) {
    return MatchesModel(
      viewhierarchy1ItemList:
          viewhierarchy1ItemList ?? this.viewhierarchy1ItemList,
    );
  }

  @override
  List<Object?> get props => [viewhierarchy1ItemList];
}
