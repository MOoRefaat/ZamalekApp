import 'package:flutter/material.dart';
import 'package:mohamed_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class CustomPhoneNumber extends StatelessWidget {
  const CustomPhoneNumber({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: theme.colorScheme.onPrimary,
        borderRadius: BorderRadius.circular(
          16.h,
        ),
        border: Border.all(
          color: appTheme.indigo50,
          width: 1.h,
          strokeAlign: strokeAlignOutside,
        ),
      ),
      child: Row(
        children: [],
      ),
    );
  }
}
