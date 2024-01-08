import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/four_item_model.dart';
import 'package:mohamed_s_application1/presentation/score_screen/models/score_model.dart';
part 'score_event.dart';
part 'score_state.dart';

/// A bloc that manages the state of a Score according to the event that is dispatched to it.
class ScoreBloc extends Bloc<ScoreEvent, ScoreState> {
  ScoreBloc(ScoreState initialState) : super(initialState) {
    on<ScoreInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<UpdateChipViewEvent>(_updateChipView);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<ScoreState> emit,
  ) {
    emit(state.copyWith(
      rectangle: event.value,
    ));
  }

  _updateChipView(
    UpdateChipViewEvent event,
    Emitter<ScoreState> emit,
  ) {
    List<FourItemModel> newList =
        List<FourItemModel>.from(state.scoreModelObj!.fourItemList);
    newList[event.index] = newList[event.index].copyWith(
      isSelected: event.isSelected,
    );
    emit(state.copyWith(
        scoreModelObj: state.scoreModelObj?.copyWith(fourItemList: newList)));
  }

  List<FourItemModel> fillFourItemList() {
    return List.generate(6, (index) => FourItemModel());
  }

  _onInitialize(
    ScoreInitialEvent event,
    Emitter<ScoreState> emit,
  ) async {
    emit(state.copyWith(
      rectangle: false,
    ));
    emit(state.copyWith(
        scoreModelObj: state.scoreModelObj?.copyWith(
      fourItemList: fillFourItemList(),
    )));
  }
}
