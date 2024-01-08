import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewhierarchylist_item_model.dart';
import 'package:mohamed_s_application1/presentation/tickets_page/models/tickets_model.dart';
part 'tickets_event.dart';
part 'tickets_state.dart';

/// A bloc that manages the state of a Tickets according to the event that is dispatched to it.
class TicketsBloc extends Bloc<TicketsEvent, TicketsState> {
  TicketsBloc(TicketsState initialState) : super(initialState) {
    on<TicketsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TicketsInitialEvent event,
    Emitter<TicketsState> emit,
  ) async {
    emit(state.copyWith(
        ticketsModelObj: state.ticketsModelObj?.copyWith(
      viewhierarchylistItemList: fillViewhierarchylistItemList(),
    )));
  }

  List<ViewhierarchylistItemModel> fillViewhierarchylistItemList() {
    return [
      ViewhierarchylistItemModel(
          dateImage: ImageConstant.imgEllipse45200x167,
          matchImage: ImageConstant.imgImage3,
          matchImage1: ImageConstant.imgRectangle10422,
          dateText: "10 اكتوبر 2023",
          dateImage1: ImageConstant.imgFrameOnprimary,
          stadiumText: "ستاد القاهرة الدولي",
          stadiumImage: ImageConstant.imgFrameOnprimary24x24)
    ];
  }
}
