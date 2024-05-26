// ignore_for_file: duplicate_ignore

import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../widgets/custom_elevated_button.dart';
import '../widgets/custom_text_form_field.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class ChangePasswordScreen extends StatelessWidget {
  ChangePasswordScreen({Key? key})
      : super(
    key: key,
  );

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        // backgroundColor: theme.colorScheme.onPrimary,
        resizeToAvoidBottomInset: false,
        body: SingleChildScrollView(
          padding: EdgeInsets.only(
            bottom: MediaQuery.of(context).viewInsets.bottom,
          ),
          child: Form(
            key: _formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 24.h,
                vertical: 25.v,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgArrowLeft,
                    height: 38.v,
                    width: 21.h,
                    alignment: Alignment.centerLeft,
                    onTap: () {
                      onTapImgArrowleftone(context);
                    },
                  ),
                  SizedBox(height: 27.v),
                  Text(
                    "Reset Password",
                    style: theme.textTheme.headlineMedium,
                  ),
                  SizedBox(height: 14.v),
                  Text(
                    "Enter your new password",
                    style: CustomTextStyles.bodySmallRegular,
                  ),
                  SizedBox(height: 84.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      right: 13.h,
                    ),
                    child: CustomTextFormField(
                      controller: newpasswordController,
                      hintText: "New Password",
                      textInputType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 30.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 20.h,
                      right: 13.h,
                    ),
                    child: CustomTextFormField(
                      controller: confirmpasswordController,
                      hintText: "Confirm Password",
                      textInputAction: TextInputAction.done,
                      textInputType: TextInputType.visiblePassword,
                      obscureText: true,
                    ),
                  ),
                  SizedBox(height: 58.v),
                  CustomElevatedButton(
                    width: 251.h,
                    text: "Change Password",
                    onPressed: () {
                      onTapChangepassword(context);
                    },
                  ),
                  SizedBox(height: 5.v)
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Navigates back to the previous screen.
  onTapImgArrowleftone(BuildContext context) {
    Navigator.pop(context);
  }

  /// Navigates to the signInOneScreen when the action is triggered.
  onTapChangepassword(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
