import '../menu_screen/widgets/elevengrid_item_widget.dart';
import '../menu_screen/widgets/userprofile_item_widget.dart';
import '../menu_screen/widgets/viewhierarchy_item_widget.dart';
import 'models/elevengrid_item_model.dart';
import 'models/menu_model.dart';
import 'models/userprofile_item_model.dart';
import 'models/viewhierarchy_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:papaya_s_application/core/app_export.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'provider/menu_provider.dart';

class MenuScreen extends StatefulWidget {
  const MenuScreen({Key? key})
      : super(
          key: key,
        );

  @override
  MenuScreenState createState() => MenuScreenState();
  static Widget builder(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => MenuProvider(),
      child: MenuScreen(),
    );
  }
}

class MenuScreenState extends State<MenuScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 12.v,
          ),
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    Text(
                      "lbl_visit".tr,
                      style: TextStyle(
                        color: appTheme.black900,
                        fontSize: 24.fSize,
                        fontFamily: 'Nunito',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 9.h,
                        top: 2.v,
                      ),
                      child: Text(
                        "lbl_buton".tr,
                        style: TextStyle(
                          color: appTheme.redA200,
                          fontSize: 24.fSize,
                          fontFamily: 'Ole',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 6.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  "msg_explorer_the_best".tr,
                  style: TextStyle(
                    color: appTheme.gray400,
                    fontSize: 16.fSize,
                    fontFamily: 'Nunito',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ),
              SizedBox(height: 26.v),
              _buildUserProfileSlider(context),
              SizedBox(height: 34.v),
              _buildElevenGrid(context),
              SizedBox(height: 19.v),
              _buildTwentyOneColumn(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileSlider(BuildContext context) {
    return Column(
      children: [
        Consumer<MenuProvider>(
          builder: (context, provider, child) {
            return CarouselSlider.builder(
              options: CarouselOptions(
                height: 202.v,
                initialPage: 0,
                autoPlay: true,
                viewportFraction: 1.0,
                enableInfiniteScroll: false,
                scrollDirection: Axis.horizontal,
                onPageChanged: (
                  index,
                  reason,
                ) {
                  provider.sliderIndex = index;
                },
              ),
              itemCount: provider.menuModelObj.userprofileItemList.length,
              itemBuilder: (context, index, realIndex) {
                UserprofileItemModel model =
                    provider.menuModelObj.userprofileItemList[index];
                return UserprofileItemWidget(
                  model,
                );
              },
            );
          },
        ),
        SizedBox(height: 11.v),
        Align(
          alignment: Alignment.centerRight,
          child: Consumer<MenuProvider>(
            builder: (context, provider, child) {
              return SizedBox(
                height: 6.v,
                child: AnimatedSmoothIndicator(
                  activeIndex: provider.sliderIndex,
                  count: provider.menuModelObj.userprofileItemList.length,
                  axisDirection: Axis.horizontal,
                  effect: ScrollingDotsEffect(
                    spacing: 7,
                    activeDotColor: appTheme.redA200,
                    dotColor: appTheme.gray400,
                    dotHeight: 6.v,
                    dotWidth: 6.h,
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildElevenGrid(BuildContext context) {
    return Container(
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Consumer<MenuProvider>(
        builder: (context, provider, child) {
          return GridView.builder(
            shrinkWrap: true,
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              mainAxisExtent: 63.v,
              crossAxisCount: 4,
              mainAxisSpacing: 44.h,
              crossAxisSpacing: 44.h,
            ),
            physics: NeverScrollableScrollPhysics(),
            itemCount: provider.menuModelObj.elevengridItemList.length,
            itemBuilder: (context, index) {
              ElevengridItemModel model =
                  provider.menuModelObj.elevengridItemList[index];
              return ElevengridItemWidget(
                model,
              );
            },
          );
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTwentyOneColumn(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "lbl_nearby".tr,
          style: TextStyle(
            color: appTheme.black900,
            fontSize: 16.fSize,
            fontFamily: 'Nunito',
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(height: 7.v),
        Consumer<MenuProvider>(
          builder: (context, provider, child) {
            return ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (
                context,
                index,
              ) {
                return SizedBox(
                  height: 8.v,
                );
              },
              itemCount: provider.menuModelObj.viewhierarchyItemList.length,
              itemBuilder: (context, index) {
                ViewhierarchyItemModel model =
                    provider.menuModelObj.viewhierarchyItemList[index];
                return ViewhierarchyItemWidget(
                  model,
                );
              },
            );
          },
        ),
      ],
    );
  }
}
