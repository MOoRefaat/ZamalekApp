import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class FourItemWidget extends StatelessWidget {
  const FourItemWidget({Key? key})
      : super(
          key: key,
        );

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
        "2 : 1",
        style: TextStyle(
          color: theme.colorScheme.primaryContainer,
          fontSize: 16.fSize,
          fontFamily: 'Clash Grotesk',
          fontWeight: FontWeight.w500,
        ),
      ),
      selected: false,
      backgroundColor: theme.colorScheme.onPrimary,
      selectedColor: theme.colorScheme.onPrimary,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.blueGray300.withOpacity(0.15),
          width: 1.h,
        ),
        borderRadius: BorderRadius.circular(
          26.h,
        ),
      ),
      onSelected: (value) {},
    );
  }
}
