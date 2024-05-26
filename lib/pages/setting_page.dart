import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../theme/custom_button_style.dart';
import '../widgets/custom_elevated_button.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray20001,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillGray,
          child: Column(
            children: [
              _buildSettingsColumn(context),
              SizedBox(height: 10.v),
              _buildTelevisionColumn(context),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
    );
  }

  // Section Widget
  Widget _buildSettingsColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(25.h),
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 2.v),
          Text(
            "Pengaturan",
            style: CustomTextStyles.titleLargeOnPrimaryContainer,
          ),
          SizedBox(height: 12.v),
          Row(
            children: [
              Container(
                height: 65.adaptSize,
                width: 65.adaptSize,
                decoration: AppDecoration.fillBlueGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder32,
                ),
                child: CustomImageView(
                  imagePath: ImageConstant.imageNotFound,
                  height: 65.adaptSize,
                  width: 65.adaptSize,
                  radius: BorderRadius.circular(32.h),
                  alignment: Alignment.center,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  top: 20.v,
                  bottom: 21.v,
                ),
                child: Text(
                  "User Account",
                  style: CustomTextStyles.titleSmallOnPrimaryContainer,
                ),
              ),
              Spacer(),
              CustomImageView(
                imagePath: ImageConstant.imgMenu,
                height: 20.adaptSize,
                width: 20.adaptSize,
                margin: EdgeInsets.only(
                  top: 20.v,
                  bottom: 24.v,
                ),
              )
            ],
          ),
          SizedBox(height: 35.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 15.h,
              vertical: 11.v,
            ),
            decoration: AppDecoration.second.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Delivery to your address",
                      style: theme.textTheme.titleMedium,
                    ),
                    SizedBox(height: 4.v),
                    Text(
                      "Jl. Samanhuudi / III No. 51",
                      style: CustomTextStyles.bodyMediumInterWhiteA700,
                    ),
                    SizedBox(height: 14.v),
                    CustomElevatedButton(
                      height: 24.4,
                      width: 83.h,
                      text: "2.4 km",
                      margin: EdgeInsets.only(left: 3.h),
                      buttonStyle: CustomButtonStyles.fillGrayTL5,
                      buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
                    )
                  ],
                ),
                CustomImageView(
                  imagePath: ImageConstant.arrowRight,
                  height: 24.v,
                  width: 13.h,
                  margin: EdgeInsets.only(
                    top: 29.v,
                    right: 3.h,
                    bottom: 28.v,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  // Section Widget
  Widget _buildTelevisionColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 25.v),
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 25.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgMenu2,
                        height: 26.v,
                        width: 23.h,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 17.h),
                        child: Text(
                          "Daftar Transaksi",
                          style: CustomTextStyles.bodyMedium15_1,
                        ),
                      )
                    ],
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.arrowRight2,
                    height: 15.v,
                    width: 8.h,
                    margin: EdgeInsets.only(bottom: 9.v),
                    onTap: () {
                      onTapImgArrowRight(context);
                    },
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 19.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(left: 25.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    height: 85.v,
                    width: 246.h,
                    margin: EdgeInsets.only(bottom: 15.v),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imageNotFound,
                          height: 55.adaptSize,
                          width: 55.adaptSize,
                          radius: BorderRadius.circular(7.h),
                          alignment: Alignment.centerLeft,
                          margin: EdgeInsets.only(left: 15.h),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 70.h,
                              vertical: 14.v,
                            ),
                            decoration: AppDecoration.outlineBlueGray100.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder7,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                  alignment: Alignment.centerRight,
                                  child: Text(
                                    "Sedang dikirim",
                                    style: CustomTextStyles.labelLargeDeeporangeA70012,
                                  ),
                                ),
                                SizedBox(height: 18.v),
                                Padding(
                                  padding: EdgeInsets.only(left: 8.h),
                                  child: Text(
                                    "Kue Matcha",
                                    style: CustomTextStyles.bodySmallOnPrimaryContainerRegular,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      onTapColumnTransaksi(context);
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 7.h,
                        vertical: 15.v,
                      ),
                      decoration: AppDecoration.outlineBlueGray100.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder7,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(height: 21.v)
                          Text(
                            "Transaksi Lainnya",
                            style: CustomTextStyles.bodySmallOnPrimaryContainerRegular,
                          ),
                          SizedBox(height: 9.v),
                          Padding(
                            padding: EdgeInsets.only(left: 3.h),
                            child: Text(
                              "Lihat Semua",
                              style: CustomTextStyles.labelLargePrimary,
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          SizedBox(height: 24.v),
          Padding(
            padding: EdgeInsets.only(left: 25.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMenu3,
                  height: 23.adaptSize,
                  width: 23.adaptSize,
                  onTap: () {
                    onTapImgSettingSone(context);
                  },
                ),
                Padding(
                  padding: EdgeInsets.only(left: 17.h),
                  child: Text(
                    "Chat admin",
                    style: CustomTextStyles.bodyMedium15_1,
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );

    // Navigasi to daftar transaksi
    onTapImgArrowRight(BuildContext context) {
      Navigator.pushNamed(context, AppRoutes.daftarTransaksiScreen);
    }

    onTapColumnTransaksi(BuildContext context) {
      Navigator.pushNamed(context, AppRoutes.daftarTransaksiScreen);
    }

    // Navigasi to chat
    onTapImgSettingSone(BuildContext context) {
      Navigator.pushNamed(context, AppRoutes.chatAdminScreen);
    }

  }
}