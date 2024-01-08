// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'viewhierarchylist_item_model.dart';

/// This class defines the variables used in the [tickets_page],
/// and is typically used to hold data that is passed between different parts of the application.
class TicketsModel extends Equatable {
  TicketsModel({this.viewhierarchylistItemList = const []}) {}

  List<ViewhierarchylistItemModel> viewhierarchylistItemList;

  TicketsModel copyWith(
      {List<ViewhierarchylistItemModel>? viewhierarchylistItemList}) {
    return TicketsModel(
      viewhierarchylistItemList:
          viewhierarchylistItemList ?? this.viewhierarchylistItemList,
    );
  }

  @override
  List<Object?> get props => [viewhierarchylistItemList];
}
