import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_elevated_button.dart';

class OrderdetailsItemWidget extends StatelessWidget {
  const OrderdetailsItemWidget({Key? key})
      : super(key: key);



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imageNotFound,
                  height: 26.v,
                  width: 23.h,
                  margin: EdgeInsets.only(top: 2.v),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Pesanan",
                        style: CustomTextStyles.bodySmallOnPrimaryContainerRegular,
                      ),
                      Text(
                        "14 Maret 2024",
                        style: CustomTextStyles.bodySmall10,
                      )
                    ],
                  ),
                ),

                Spacer(),
                Container(
                  height: 17.v,
                  width: 82.h,
                  margin: EdgeInsets.symmetric(vertical: 6.v),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Container(
                          height: 17.v,
                          width: 82.h,
                          decoration: BoxDecoration(
                            color: appTheme.orange100,
                            borderRadius: BorderRadius.circular(2.h),
                          ),
                        ),
                      ),

                      Align(
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          "Menunggu",
                          style: CustomTextStyles.bodySmallDeeporangeA700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15.v),
          Divider(),
          SizedBox(height: 6.v),
          Padding(
            padding: EdgeInsets.only(
              left: 6.h,
              right:1.h,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imageNotFound,
                      height: 55.adaptSize,
                      width: 55.adaptSize,
                      radius: BorderRadius.circular(7.h),
                    ),
                    SizedBox(height: 6.v),
                    Text(
                      "Total Harga",
                      style: theme.textTheme.bodySmall,
                    ),
                    Text(
                      "Rp45.000",
                      style: theme.textTheme.labelSmall,
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(
                    bottom: 39.v,
                    left: 10.h,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Kue Matcha",
                        style: CustomTextStyles.labelMediumOnPrimaryContainer,
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "Ukuran: 10x10x10",
                        style: CustomTextStyles.bodySmallRegular8,
                      ),
                      SizedBox(height: 3.v),
                      Text(
                        "Tooping: Choco chips",
                        style: CustomTextStyles.bodySmallRegular8,
                      )
                    ],
                  ),
                ),
                Spacer(),
                _buildPayButton(context)
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Section Widget
  Widget _buildPayButton(BuildContext context) {
    return CustomElevatedButton(
      height: 22.v,
      width: 74.h,
      text: "Bayar",
      margin: EdgeInsets.only(
        top: 59.v,
        bottom: 4.v,
      ),
      buttonStyle: CustomButtonStyles.fillBlueGrayTL5,
      buttonTextStyle: CustomTextStyles.labelSmallWhiteA700,
    );
  }
}