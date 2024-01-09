import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class FramethirtysixItemWidget extends StatelessWidget {
  const FramethirtysixItemWidget({Key? key})
      : super(
          key: key,
        );

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
        "xxl",
        style: TextStyle(
          color: theme.colorScheme.primaryContainer,
          fontSize: 16.fSize,
          fontFamily: 'DIN Next LT Arabic',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.onPrimary,
      selectedColor: theme.colorScheme.primary,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.blueGray300.withOpacity(0.15),
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(
          13.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
