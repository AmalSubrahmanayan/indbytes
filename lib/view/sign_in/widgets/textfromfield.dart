import 'package:flutter/material.dart';
import 'package:indbytes/constants/colors/app_colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget({
    super.key,
    required this.obscureText,
    this.controller,
    this.decoration,
    this.hintText,
    this.iconData,
    this.validator,
    this.suffixicon,
    required this.autoFocus,
  });

  final bool obscureText;
  final TextEditingController? controller;
  final String? hintText;
  final IconData? iconData;
  final InputDecoration? decoration;
  final String? Function(String?)? validator;
  final Widget? suffixicon;
  final bool autoFocus;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        margin: const EdgeInsets.all(10),
        child: TextFormField(
          autofocus: autoFocus,
          obscureText: obscureText,
          controller: controller,
          validator: validator,

          decoration: InputDecoration(
            focusColor: AppColors.blackColor,
            suffixIcon: suffixicon,
            fillColor: AppColors.whiteColor,
            filled: true,
            prefixIcon: Icon(iconData),
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(12),
              borderSide: BorderSide(color: AppColors.greyColor),
            ),
            hintText: hintText,
          ),
          //hintText: hintText,
          // iconData: iconData,
        ),
      ),
    );
  }
}
