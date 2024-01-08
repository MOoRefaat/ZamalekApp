// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'viewhierarchy_item_model.dart';
import 'item3_item_model.dart';

/// This class defines the variables used in the [home_page],
/// and is typically used to hold data that is passed between different parts of the application.
class HomeModel extends Equatable {
  HomeModel({
    this.viewhierarchyItemList = const [],
    this.item3ItemList = const [],
  }) {}

  List<ViewhierarchyItemModel> viewhierarchyItemList;

  List<Item3ItemModel> item3ItemList;

  HomeModel copyWith({
    List<ViewhierarchyItemModel>? viewhierarchyItemList,
    List<Item3ItemModel>? item3ItemList,
  }) {
    return HomeModel(
      viewhierarchyItemList:
          viewhierarchyItemList ?? this.viewhierarchyItemList,
      item3ItemList: item3ItemList ?? this.item3ItemList,
    );
  }

  @override
  List<Object?> get props => [viewhierarchyItemList, item3ItemList];
}
