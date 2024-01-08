// ignore_for_file: must_be_immutable

part of 'item_details_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ItemDetails widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ItemDetailsEvent extends Equatable {}

/// Event that is dispatched when the ItemDetails widget is first created.
class ItemDetailsInitialEvent extends ItemDetailsEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing ChipView selection
class UpdateChipViewEvent extends ItemDetailsEvent {
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
