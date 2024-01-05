import 'models/get_started_model.dart';
import 'package:flutter/material.dart';
import 'package:papaya_s_application/core/app_export.dart';
import 'package:papaya_s_application/widgets/custom_elevated_button.dart';
import 'provider/get_started_provider.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({Key? key}) : super(key: key);

  @override
  GetStartedScreenState createState() => GetStartedScreenState();

  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
        create: (context) => GetStartedProvider(), child: GetStartedScreen());
  }
}

class GetStartedScreenState extends State<GetStartedScreen> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 3000), () {
      NavigatorService.popAndPushNamed(
        AppRoutes.menuScreen,
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Spacer(),
                      Container(
                          height: 67.v,
                          width: 262.h,
                          margin: EdgeInsets.only(left: 29.h),
                          child:
                              Stack(alignment: Alignment.bottomLeft, children: [
                            Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                    width: 262.h,
                                    child: RichText(
                                        text: TextSpan(children: [
                                          TextSpan(
                                              text:
                                                  "msg_enjoy_your_holiday2".tr,
                                              style: CustomTextStyles
                                                  .headlineSmallBluegray800),
                                          TextSpan(
                                              text: "lbl_visit".tr,
                                              style: CustomTextStyles
                                                  .headlineSmallLightblue700)
                                        ]),
                                        textAlign: TextAlign.left))),
                            Align(
                                alignment: Alignment.bottomLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(
                                        left: 66.h, bottom: 3.v),
                                    child: Text("lbl_buton".tr,
                                        style: TextStyle(
                                            color: appTheme.lightBlue700,
                                            fontSize: 24.fSize,
                                            fontFamily: 'Ole',
                                            fontWeight: FontWeight.w400))))
                          ])),
                      SizedBox(height: 14.v),
                      Container(
                          width: 256.h,
                          margin: EdgeInsets.only(left: 29.h),
                          child: Text("msg_keep_you_travell".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(
                                  color: appTheme.gray400,
                                  fontSize: 16.fSize,
                                  fontFamily: 'Nunito',
                                  fontWeight: FontWeight.w700))),
                      SizedBox(height: 24.v),
                      CustomElevatedButton(
                          width: 174.h,
                          text: "lbl_explore".tr,
                          margin: EdgeInsets.only(left: 29.h),
                          buttonStyle: CustomButtonStyles.none,
                          decoration:
                              CustomButtonStyles.gradientRedAToRedADecoration),
                      SizedBox(height: 84.v),
                      CustomImageView(
                          imagePath: ImageConstant.img24069061,
                          height: 384.v,
                          width: 360.h)
                    ]))));
  }
}
