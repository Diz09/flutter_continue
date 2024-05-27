import 'package:flutter/material.dart';
import '../../core/app_export.dart';

enum BottomBarEnum { Home, Menu, Cart, Setting }

// ignore_for_file: must_be_immutable
class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.navHome,
      activeIcon: ImageConstant.naviHome,
      title: "Home",
      type: BottomBarEnum.Home,
    ),
    BottomMenuModel(
      icon: ImageConstant.navMenu,
      activeIcon: ImageConstant.naviMenu,
      title: "Menu",
      type: BottomBarEnum.Menu,
    ),
    BottomMenuModel(
      icon: ImageConstant.navChart,
      activeIcon: ImageConstant.naviCart,
      title: "Cart",
      type: BottomBarEnum.Cart,
    ),
    BottomMenuModel(
      icon: ImageConstant.navSetting,
      activeIcon: ImageConstant.naviSetting,
      title: "Setting",
      type: BottomBarEnum.Setting,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 78.v,
      decoration: BoxDecoration(
        color: appTheme.whiteA700,
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(15.h),
        ),
        boxShadow: [
          BoxShadow(
            color: theme.colorScheme.onPrimaryContainer,
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: Offset(
              0,
              -4,
            ),
          )
        ],
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  color: appTheme.blueGray400,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.bodySmallLight.copyWith(
                      color: appTheme.blueGray400,
                    ),
                  ),
                )
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  color: theme.colorScheme.primary,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 5.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.labelLargePrimary.copyWith(
                      color: theme.colorScheme.primary,
                    ),
                  ),
                )
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;

}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Please replace the respective widget here",
              style: TextStyle(
                fontSize: 18
              ),
            )
          ],
        ),
      ),
    );
  }
}