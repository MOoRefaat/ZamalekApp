import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewhierarchy_item_model.dart';
import '../models/item3_item_model.dart';
import 'package:mohamed_s_application1/presentation/home_page/models/home_model.dart';
part 'home_event.dart';
part 'home_state.dart';

/// A bloc that manages the state of a Home according to the event that is dispatched to it.
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(HomeState initialState) : super(initialState) {
    on<HomeInitialEvent>(_onInitialize);
  }

  _onInitialize(
    HomeInitialEvent event,
    Emitter<HomeState> emit,
  ) async {
    emit(state.copyWith(
        homeModelObj: state.homeModelObj?.copyWith(
            viewhierarchyItemList: fillViewhierarchyItemList(),
            item3ItemList: fillItem3ItemList())));
  }

  List<ViewhierarchyItemModel> fillViewhierarchyItemList() {
    return [
      ViewhierarchyItemModel(
          titleText: "الزمالك",
          liveText: "مباشر",
          scoreText1: "2",
          colonText: ":",
          scoreText2: "1",
          leagueTitleText: "الدوري المصري الممتاز",
          weekText: "الأسبوع 10",
          ismailiImage: ImageConstant.imgImage5,
          ismailiTitleText: "الإسماعيلي")
    ];
  }

  List<Item3ItemModel> fillItem3ItemList() {
    return [
      Item3ItemModel(
          image: ImageConstant.imgDownload16R,
          text: "قميص مباراة الزمالك الأحتياطي",
          currency: "ج.م",
          amount: "150"),
      Item3ItemModel(
          image: ImageConstant.imgDownload12R,
          text: "قميص الزمالك (أسود)",
          currency: "ج.م",
          amount: "150"),
      Item3ItemModel(
          image: ImageConstant.imgDownload15R,
          text: "قميص مباراة الزمالك الأساسي",
          currency: "ج.م",
          amount: "640")
    ];
  }
}
