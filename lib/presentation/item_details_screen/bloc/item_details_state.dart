// ignore_for_file: must_be_immutable

part of 'item_details_bloc.dart';

/// Represents the state of ItemDetails in the application.
class ItemDetailsState extends Equatable {
  ItemDetailsState({this.itemDetailsModelObj});

  ItemDetailsModel? itemDetailsModelObj;

  @override
  List<Object?> get props => [
        itemDetailsModelObj,
      ];
  ItemDetailsState copyWith({ItemDetailsModel? itemDetailsModelObj}) {
    return ItemDetailsState(
      itemDetailsModelObj: itemDetailsModelObj ?? this.itemDetailsModelObj,
    );
  }
}
