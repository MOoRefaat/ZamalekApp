import '../models/four_item_model.dart';
import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class FourItemWidget extends StatelessWidget {
  FourItemWidget(
    this.fourItemModelObj, {
    Key? key,
    this.onSelectedChipView,
  }) : super(
          key: key,
        );

  FourItemModel fourItemModelObj;

  Function(bool)? onSelectedChipView;

  @override
  Widget build(BuildContext context) {
    return RawChip(
      padding: EdgeInsets.symmetric(
        horizontal: 26.h,
        vertical: 16.v,
      ),
      showCheckmark: false,
      labelPadding: EdgeInsets.zero,
      label: Text(
        fourItemModelObj.four!,
        style: TextStyle(
          color: theme.colorScheme.primaryContainer,
          fontSize: 16.fSize,
          fontFamily: 'Clash Grotesk',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: (fourItemModelObj.isSelected ?? false),
      backgroundColor: theme.colorScheme.onPrimary,
      selectedColor: theme.colorScheme.onPrimary,
      shape: (fourItemModelObj.isSelected ?? false)
          ? RoundedRectangleBorder(
              side: BorderSide(
                color: theme.colorScheme.onPrimary.withOpacity(0.6),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                26.h,
              ),
            )
          : RoundedRectangleBorder(
              side: BorderSide(
                color: appTheme.blueGray300.withOpacity(0.15),
                width: 1.h,
              ),
              borderRadius: BorderRadius.circular(
                26.h,
              ),
            ),
      onSelected: (value) {
        onSelectedChipView?.call(value);
      },
    );
  }
}
