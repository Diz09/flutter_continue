import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title_searchview.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_drop_down.dart';
import 'widgets/orderdetails_item_widget.dart';

// ignore_for_file: must_be_immutable
class DaftarTransaksiScreen extends StatelessWidget {
  DaftarTransaksiScreen({Key? key})
      : super( key: key);

  TextEditingController searchController = TextEditingController();
  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];
  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];
  List<String> dropdownItemList2 = ["Item One", "Item Two", "Item Three"];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray20001,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 18.v),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 4.h),
              child: Column(
                children: [
                  _buildRowSpacer(context),
                  SizedBox(height: 14.v),
                  _buildOrderDetails(context)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 115.v,
      leadingWidth: 50.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeft,
        margin:EdgeInsets.only(
          left: 25.h,
          top: 47.v,
          bottom: 45.v,
        ),
        onTap: () {
          Navigator.pop(context);
        },
      ),
      title: AppbarTitleSearchview(
        margin: EdgeInsets.only(left: 25.h),
        hintText: "",
        controller: searchController,
      ),
      styleType: Style.bgFill,
    );
  }

  // Section Widget
  // Widget _buildSemuaTanggal(BuildContext context) {
  //   return CustomElevatedButton(
  //     height: 30.v,
  //     width: 135.h,
  //     text: "Semua Tanggal",
  //     margin: EdgeInsets.only(left: 10.h),
  //     buttonStyle: CustomButtonStyles.fillBlueGray,
  //     buttonTextStyle: CustomTextStyles.bodySmallOnPrimaryContainerRegular,
  //   );
  // }

  // Section Widget
  Widget _buildRowSpacer(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 11.v),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        mainAxisSize: MainAxisSize.min,
        children: [
          Spacer(),
          Padding(
            padding: EdgeInsets.only(bottom: 1.v),
            child: CustomDropDown(
              width: 135.h,
              icon: Container(
                margin: EdgeInsets.symmetric(horizontal: 16.h),
                child: CustomImageView(
                  imagePath: ImageConstant.arrowDown,
                  height: 7.v,
                  width: 10.h,
                ),
              ),
              hintText: "Semua Status",
              items: dropdownItemList,
              contentPadding: EdgeInsets.fromLTRB(10.h, 5.v, 10.h, 6.v),
              borderDecoration: DropDownStyleHelper.fillBlueGray,
              filled: true,
              fillColor: appTheme.blueGray100,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 5.h,
              bottom: 1.v,
            ),
            child: CustomDropDown(
              width: 135.h,
              icon: Container(
                margin: EdgeInsets.symmetric(horizontal: 14.h),
                child: CustomImageView(
                  imagePath: ImageConstant.arrowDown,
                  height: 7.v,
                  width: 10.h,
                ),
              ),
              hintText: "Semua Cake",
              items: dropdownItemList1,
              contentPadding: EdgeInsets.fromLTRB(10.h, 5.v, 10.h, 6.v),
              borderDecoration: DropDownStyleHelper.fillBlueGray,
              filled: true,
              fillColor: appTheme.blueGray100,
            ),
          ),
          Padding(
            padding: EdgeInsets.only( left: 5.h ),
            child: CustomDropDown(
              width: 96.h,
              icon: SizedBox(
                child: CustomImageView(
                  imagePath: ImageConstant.arrowDown,
                  height: 7.v,
                  width: 10.h,
                ),
              ),
              hintText: "Semua Tanggal",
              items: dropdownItemList2,
              contentPadding: EdgeInsets.fromLTRB(10.h, 5.v, 10.h, 6.v),
              borderDecoration: DropDownStyleHelper.fillBlueGray,
              filled: true,
              fillColor: appTheme.blueGray100,
            ),
          ),
        ],
      ),
    );
  }

  // Section Widget
  Widget _buildOrderDetails(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric( horizontal: 21.h ),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox( height: 10.v );
        },
        itemCount: 20,
        itemBuilder: (context, index) {
          return OrderdetailsItemWidget();
        },
      ),
    );
  }
}