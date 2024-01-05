import 'package:flutter/material.dart';
import 'package:papaya_s_application/core/app_export.dart';
import 'package:papaya_s_application/presentation/get_started_screen/models/get_started_model.dart';

/// A provider class for the GetStartedScreen.
///
/// This provider manages the state of the GetStartedScreen, including the
/// current getStartedModelObj

// ignore_for_file: must_be_immutable
class GetStartedProvider extends ChangeNotifier {
  GetStartedModel getStartedModelObj = GetStartedModel();

  @override
  void dispose() {
    super.dispose();
  }
}
