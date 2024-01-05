import 'userprofile_item_model.dart';
import '../../../core/app_export.dart';
import 'elevengrid_item_model.dart';
import 'viewhierarchy_item_model.dart';

class MenuModel {
  List<UserprofileItemModel> userprofileItemList =
      List.generate(1, (index) => UserprofileItemModel());

  List<ElevengridItemModel> elevengridItemList = [
    ElevengridItemModel(
        wisataImage: ImageConstant.imgWisata, wisataText: "Wisata"),
    ElevengridItemModel(
        wisataImage: ImageConstant.imgHotel, wisataText: "Hotel"),
    ElevengridItemModel(
        wisataImage: ImageConstant.imgEvent, wisataText: "Event"),
    ElevengridItemModel(
        wisataImage: ImageConstant.imgKuliner, wisataText: "Kuliner"),
    ElevengridItemModel(wisataImage: ImageConstant.imgAtm, wisataText: "Atm"),
    ElevengridItemModel(
        wisataImage: ImageConstant.imgDesa, wisataText: "Desa Wisata"),
    ElevengridItemModel(
        wisataImage: ImageConstant.imgYt, wisataText: "Youtube"),
    ElevengridItemModel(
        wisataImage: ImageConstant.imgIg, wisataText: "Instagram")
  ];

  List<ViewhierarchyItemModel> viewhierarchyItemList = [
    ViewhierarchyItemModel(
        image: ImageConstant.imgRectangle9,
        title: "Pantai Nirwana",
        subtitle: "Buka 09:00 - 16:00"),
    ViewhierarchyItemModel(
        image: ImageConstant.imgRectangle971x88,
        title: "Air Terjun Kandawu Ndawuna",
        subtitle: "Buka 07:00 - 13:00")
  ];
}
