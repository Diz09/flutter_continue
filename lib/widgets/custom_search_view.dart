import 'package:flutter/material.dart';
import '../core/app_export.dart';

class CustomSearchView extends StatelessWidget {
  CustomSearchView(
      {
        Key? key,
        this.alignment,
        this.width,
        this.scrollPadding,
        this.controller,
        this.focusNode,
        this.autofocus = false,
        this.textStyle,
        this.textInputType = TextInputType.text,
        this.maxLines,
        this.hintText,
        this.hintStyle,
        this.prefix,
        this.prefixConstraints,
        this.suffix,
        this.suffixConstraints,
        this.contentPadding,
        this.borderDecoration,
        this.fillColor,
        this.filled = false,
        this.validator,
        this.onChanged
      })
      : super(key: key);

  final Alignment? alignment;
  final double? width;
  final TextEditingController? scrollPadding;
  final TextEditingController? controller;
  final FocusNode? focusNode;
  final bool? autofocus;
  final TextStyle? textStyle;
  final TextInputType? textInputType;
  final int? maxLines;
  final String? hintText;
  final TextStyle? hintStyle;
  final Widget? prefix;
  final BoxConstraints? prefixConstraints;
  final Widget? suffix;
  final BoxConstraints? suffixConstraints;
  final EdgeInsets? contentPadding;
  final InputBorder? borderDecoration;
  final Color? fillColor;
  final bool? filled;
  final FormFieldValidator<String>? validator;
  final Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: searchViewWidget(context))
        : searchViewWidget(context);
  }

  Widget searchViewWidget(BuildContext context) => SizedBox(
    width: width ?? double.maxFinite,
    child: TextFormField(
      scrollPadding: EdgeInsets.only(bottom: MediaQuery.of(context).viewInsets.bottom),
      controller: controller,
      focusNode: focusNode,
      onTapOutside: (event) {
        if (focusNode != null) {
          focusNode?.unfocus();
        } else {
          FocusManager.instance.primaryFocus?.unfocus();
        }
      },
      autofocus: autofocus!,
      style: textStyle ?? theme.textTheme.bodyLarge,
      keyboardType: textInputType,
      maxLines: maxLines ?? 1,
      decoration: decoration,
      validator: validator,
      onChanged: (String value) {
        onChanged?.call(value);
      },
    ),
  );
  InputDecoration get decoration => InputDecoration(
    hintText: hintText ?? "",
    hintStyle: hintStyle ?? theme.textTheme.bodyLarge,
    prefixIcon: prefix ??
      Container(
        margin: EdgeInsets.fromLTRB(6.h, 5.v, 15.h, 5.v),
        child: CustomImageView(
          imagePath: ImageConstant.imgSearch,
          height: 40.adaptSize,
          width: 40.adaptSize,
        ),
      ),
    prefixIconConstraints: prefixConstraints ??
      BoxConstraints(
        maxHeight: 50.v,
      ),
    suffixIcon: suffix ??
      Padding(
        padding: EdgeInsets.only(right: 15.h),
        child: IconButton(
          onPressed: () => controller!.clear(),
          icon: Icon(
            Icons.clear,
            color: Colors.grey.shade600,
          ),
        ),
      ),
    suffixIconConstraints: suffixConstraints ??
      BoxConstraints(
        maxHeight: 50.v,
      ),
    isDense: true,
    contentPadding: contentPadding ??
      EdgeInsets.only(
        top: 10.v,
        right: 10.h,
        bottom: 10.v,
      ),
    fillColor: fillColor,
    filled: filled,
    border: borderDecoration ??
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.h),
        borderSide: BorderSide(
          color: appTheme.blueGray100,
          width: 1,
        ),
      ),
    enabledBorder: borderDecoration ??
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.h),
        borderSide: BorderSide(
          color: appTheme.blueGray100,
          width: 1,
        ),
      ),
    focusedBorder: borderDecoration ??
      OutlineInputBorder(
        borderRadius: BorderRadius.circular(10.h),
        borderSide: BorderSide(
          color: appTheme.blueGray100,
          width: 1,
        ),
      ),
  );

}