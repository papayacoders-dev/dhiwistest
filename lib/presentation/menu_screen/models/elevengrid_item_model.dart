import '../../../core/app_export.dart';

/// This class is used in the [elevengrid_item_widget] screen.
class ElevengridItemModel {
  ElevengridItemModel({
    this.wisataImage,
    this.wisataText,
    this.id,
  }) {
    wisataImage = wisataImage ?? ImageConstant.imgWisata;
    wisataText = wisataText ?? "Wisata";
    id = id ?? "";
  }

  String? wisataImage;

  String? wisataText;

  String? id;
}
