import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewhierarchy1_item_model.dart';
import 'package:mohamed_s_application1/presentation/matches_page/models/matches_model.dart';
part 'matches_event.dart';
part 'matches_state.dart';

/// A bloc that manages the state of a Matches according to the event that is dispatched to it.
class MatchesBloc extends Bloc<MatchesEvent, MatchesState> {
  MatchesBloc(MatchesState initialState) : super(initialState) {
    on<MatchesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MatchesInitialEvent event,
    Emitter<MatchesState> emit,
  ) async {
    emit(state.copyWith(
        matchesModelObj: state.matchesModelObj
            ?.copyWith(viewhierarchy1ItemList: fillViewhierarchy1ItemList())));
  }

  List<Viewhierarchy1ItemModel> fillViewhierarchy1ItemList() {
    return [
      Viewhierarchy1ItemModel(
          titleText1: "الزمالك",
          titleText2: "الدوري المصري الممتاز",
          titleText3: "الأسبوع 10",
          dateText: "21 سبتمبر 2023",
          timeText: "09:00 م",
          pyramidsImage: ImageConstant.imgImage51,
          titleText4: "بيراميدز"),
      Viewhierarchy1ItemModel(
          pyramidsImage: ImageConstant.imgImage5, titleText4: "الإسماعيلي"),
      Viewhierarchy1ItemModel(
          pyramidsImage: ImageConstant.imgImage52, titleText4: "الإسماعيلي")
    ];
  }
}
