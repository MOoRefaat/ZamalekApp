// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'itemdetails_item_model.dart';
import 'framethirtysix_item_model.dart';

/// This class defines the variables used in the [item_details_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class ItemDetailsModel extends Equatable {
  ItemDetailsModel({
    this.itemdetailsItemList = const [],
    this.framethirtysixItemList = const [],
  }) {}

  List<ItemdetailsItemModel> itemdetailsItemList;

  List<FramethirtysixItemModel> framethirtysixItemList;

  ItemDetailsModel copyWith({
    List<ItemdetailsItemModel>? itemdetailsItemList,
    List<FramethirtysixItemModel>? framethirtysixItemList,
  }) {
    return ItemDetailsModel(
      itemdetailsItemList: itemdetailsItemList ?? this.itemdetailsItemList,
      framethirtysixItemList:
          framethirtysixItemList ?? this.framethirtysixItemList,
    );
  }

  @override
  List<Object?> get props => [itemdetailsItemList, framethirtysixItemList];
}
