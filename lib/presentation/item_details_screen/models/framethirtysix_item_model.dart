// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class is used in the [framethirtysix_item_widget] screen.
class FramethirtysixItemModel extends Equatable {
  FramethirtysixItemModel({
    this.xxl,
    this.isSelected,
  }) {
    xxl = xxl ?? "xxl";
    isSelected = isSelected ?? false;
  }

  String? xxl;

  bool? isSelected;

  FramethirtysixItemModel copyWith({
    String? xxl,
    bool? isSelected,
  }) {
    return FramethirtysixItemModel(
      xxl: xxl ?? this.xxl,
      isSelected: isSelected ?? this.isSelected,
    );
  }

  @override
  List<Object?> get props => [xxl, isSelected];
}
