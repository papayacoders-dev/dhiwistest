import 'package:flutter/material.dart';
import 'package:papaya_s_application/core/app_export.dart';
import 'package:papaya_s_application/presentation/menu_screen/models/menu_model.dart';
import '../models/userprofile_item_model.dart';
import '../models/elevengrid_item_model.dart';
import '../models/viewhierarchy_item_model.dart';

/// A provider class for the MenuScreen.
///
/// This provider manages the state of the MenuScreen, including the
/// current menuModelObj

// ignore_for_file: must_be_immutable
class MenuProvider extends ChangeNotifier {
  MenuModel menuModelObj = MenuModel();

  int sliderIndex = 0;

  @override
  void dispose() {
    super.dispose();
  }
}
