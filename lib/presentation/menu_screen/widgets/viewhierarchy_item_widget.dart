import '../models/viewhierarchy_item_model.dart';
import 'package:flutter/material.dart' hide MenuController;
import 'package:papaya_s_application/core/app_export.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  ViewhierarchyItemWidget(
    this.viewhierarchyItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchyItemModel viewhierarchyItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(12.h),
      decoration: AppDecoration.outlineGrayF.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          CustomImageView(
            imagePath: viewhierarchyItemModelObj?.image,
            height: 71.v,
            width: 88.h,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 10.h,
              top: 12.v,
              bottom: 12.v,
            ),
            child: Column(
              children: [
                Text(
                  viewhierarchyItemModelObj.title!,
                  style: TextStyle(
                    color: appTheme.blueGray800,
                    fontSize: 16.fSize,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                  ),
                ),
                SizedBox(height: 5.v),
                Text(
                  viewhierarchyItemModelObj.subtitle!,
                  style: TextStyle(
                    color: appTheme.blueGray600,
                    fontSize: 13.fSize,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
