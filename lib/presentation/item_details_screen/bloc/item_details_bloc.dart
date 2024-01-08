import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/itemdetails_item_model.dart';
import '../models/framethirtysix_item_model.dart';
import 'package:mohamed_s_application1/presentation/item_details_screen/models/item_details_model.dart';
part 'item_details_event.dart';
part 'item_details_state.dart';

/// A bloc that manages the state of a ItemDetails according to the event that is dispatched to it.
class ItemDetailsBloc extends Bloc<ItemDetailsEvent, ItemDetailsState> {
  ItemDetailsBloc(ItemDetailsState initialState) : super(initialState) {
    on<ItemDetailsInitialEvent>(_onInitialize);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _onInitialize(
    ItemDetailsInitialEvent event,
    Emitter<ItemDetailsState> emit,
  ) async {
    emit(state.copyWith(
        itemDetailsModelObj: state.itemDetailsModelObj?.copyWith(
      itemdetailsItemList: fillItemdetailsItemList(),
      framethirtysixItemList: fillFramethirtysixItemList(),
    )));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<ItemDetailsState> emit,
  ) {
    List<FramethirtysixItemModel> newList = List<FramethirtysixItemModel>.from(
        state.itemDetailsModelObj!.framethirtysixItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        itemDetailsModelObj: state.itemDetailsModelObj
            ?.copyWith(framethirtysixItemList: newList)));
  }

  List<ItemdetailsItemModel> fillItemdetailsItemList() {
    return [
      ItemdetailsItemModel(rectangle: ImageConstant.imgRectangle18518),
      ItemdetailsItemModel(rectangle: ImageConstant.imgRectangle18517),
      ItemdetailsItemModel(rectangle: ImageConstant.imgRectangle18516),
      ItemdetailsItemModel(rectangle: ImageConstant.imgRectangle18515)
    ];
  }

  List<FramethirtysixItemModel> fillFramethirtysixItemList() {
    return List.generate(6, (index) => FramethirtysixItemModel());
  }
}
