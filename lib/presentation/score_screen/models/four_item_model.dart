// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [four_item_widget] screen.
class FourItemModel extends Equatable {
  FourItemModel({
    this.four,
    this.isSelected,
  }) {
    four = four ?? "2 : 1";
    isSelected = isSelected ?? false;
  }

  String? four;

  bool? isSelected;

  FourItemModel copyWith({
    String? four,
    bool? isSelected,
  }) {
    return FourItemModel(
      four: four ?? this.four,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [four, isSelected];
}
