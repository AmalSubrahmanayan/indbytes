import 'package:flutter/material.dart';
import 'package:indbytes/constants/colors/app_colors.dart';
import 'package:indbytes/constants/text_styles/app_text_styles.dart';

class SignInButton extends StatelessWidget {
  SignInButton({super.key, required this.text, required this.onPressed});
  final String text;
  void Function() onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        backgroundColor: AppColors.redColor,
      ),
      onPressed: onPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 120, vertical: 15),
        child: Text(
          text,
          style: AppTextStyles.textStyleButton,
        ),
      ),
    );
  }
}
