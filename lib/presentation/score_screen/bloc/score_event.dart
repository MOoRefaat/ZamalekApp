// ignore_for_file: must_be_immutable

part of 'score_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Score widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ScoreEvent extends Equatable {}

/// Event that is dispatched when the Score widget is first created.
class ScoreInitialEvent extends ScoreEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends ScoreEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends ScoreEvent {
  UpdateChipViewEvent({
    required this.index,
    this.isSelected,
  });

  int index;

  bool? isSelected;

  @override
  List<Object?> get props => [
        index,
        isSelected,
      ];
}
