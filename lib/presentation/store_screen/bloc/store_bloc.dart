import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/itemgrid_item_model.dart';
import 'package:mohamed_s_application1/presentation/store_screen/models/store_model.dart';
part 'store_event.dart';
part 'store_state.dart';

/// A bloc that manages the state of a Store according to the event that is dispatched to it.
class StoreBloc extends Bloc<StoreEvent, StoreState> {
  StoreBloc(StoreState initialState) : super(initialState) {
    on<StoreInitialEvent>(_onInitialize);
  }

  List<ItemgridItemModel> fillItemgridItemList() {
    return [
      ItemgridItemModel(
          image: ImageConstant.imgDownload16R,
          text: "قميص مباراة الزمالك الأحتياطي",
          currency: "ج.م",
          amount: "150"),
      ItemgridItemModel(
          image: ImageConstant.imgDownload15R,
          text: "قميص مباراة الزمالك الأساسي",
          currency: "ج.م",
          amount: "640"),
      ItemgridItemModel(
          image: ImageConstant.imgDownload9RemovebgPreview,
          text: "قميص الزمالك (شيكابالا)",
          currency: "ج.م",
          amount: "850"),
      ItemgridItemModel(
          image: ImageConstant.imgDownload12R,
          text: "قميص الزمالك (أسود)",
          currency: "ج.م",
          amount: "150"),
      ItemgridItemModel(
          image: ImageConstant.imgDownload10R,
          text: "قميص الزمالك (شيكابالا)",
          currency: "ج.م",
          amount: "850"),
      ItemgridItemModel(
          image: ImageConstant.imgDownload7RemovebgPreview,
          text: "قميص الزمالك (جديد)",
          currency: "ج.م",
          amount: "450"),
      ItemgridItemModel(
          image: ImageConstant.imgDownload16R,
          text: "قميص مباراة الزمالك الأحتياطي",
          currency: "ج.م",
          amount: "150"),
      ItemgridItemModel(
          image: ImageConstant.imgDownload15R,
          text: "قميص مباراة الزمالك الأساسي",
          currency: "ج.م",
          amount: "640")
    ];
  }

  _onInitialize(
    StoreInitialEvent event,
    Emitter<StoreState> emit,
  ) async {
    emit(state.copyWith(searchController: TextEditingController()));
    emit(state.copyWith(
        storeModelObj: state.storeModelObj
            ?.copyWith(itemgridItemList: fillItemgridItemList())));
  }
}
