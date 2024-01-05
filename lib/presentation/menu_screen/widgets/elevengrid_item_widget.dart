import '../models/elevengrid_item_model.dart';
import 'package:flutter/material.dart' hide MenuController;
import 'package:papaya_s_application/core/app_export.dart';

// ignore: must_be_immutable
class ElevengridItemWidget extends StatelessWidget {
  ElevengridItemWidget(
    this.elevengridItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ElevengridItemModel elevengridItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomImageView(
          imagePath: elevengridItemModelObj?.wisataImage,
          height: 42.v,
          width: 41.h,
        ),
        SizedBox(height: 3.v),
        Text(
          elevengridItemModelObj.wisataText!,
          style: TextStyle(
            color: appTheme.black900,
            fontSize: 12.fSize,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
