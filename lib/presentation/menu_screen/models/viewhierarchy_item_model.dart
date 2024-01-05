import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchy_item_widget] screen.
class ViewhierarchyItemModel {
  ViewhierarchyItemModel({
    this.image,
    this.title,
    this.subtitle,
    this.id,
  }) {
    image = image ?? ImageConstant.imgRectangle9;
    title = title ?? "Pantai Nirwana";
    subtitle = subtitle ?? "Buka 09:00 - 16:00";
    id = id ?? "";
  }

  String? image;

  String? title;

  String? subtitle;

  String? id;
}
