import '../models/framethirtysix_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class FramethirtysixItemWidget extends StatelessWidget {
  FramethirtysixItemWidget(
    this.framethirtysixItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  FramethirtysixItemModel framethirtysixItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 1.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        framethirtysixItemModelObj.xxl!,
        style: TextStyle(
          color: (framethirtysixItemModelObj.isSelected ?? false)
              ? theme.colorScheme.onPrimary
              : theme.colorScheme.primaryContainer,
          fontSize: 16.fSize,
          fontFamily: 'DIN Next LT Arabic',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: (framethirtysixItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.onPrimary,
      selectedColor: theme.colorScheme.primary,
      shape: (framethirtysixItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide.none,
              borderRadius: BorderRadius.circular(
                13.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.blueGray300.withOpacity(0.15),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                13.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
