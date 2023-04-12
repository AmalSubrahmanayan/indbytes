import 'package:flutter/material.dart';
import 'package:indbytes/constants/colors/app_colors.dart';
import 'package:indbytes/constants/sizedboxes/app_sizedboxes.dart';
import 'package:indbytes/constants/text_styles/app_text_styles.dart';

// ignore: must_be_immutable
class ProfileList extends StatelessWidget {
  ProfileList(
      {super.key,
      this.headText,
      required this.childText,
      required this.icon,
      this.rightText,
      this.secondicon});
  final String? headText;
  final String childText;
  dynamic? rightText;
  final IconData icon;
  final IconData? secondicon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            headText!,

            // "Your Activities",
            style: AppTextStyles.textStyleProfileHead,
          ),
          AppSizedBoxes.sizedboxH10,
          Container(
            height: 50,
            width: 372,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: AppColors.lightGreyColor,
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: AppColors.darkGreyColor,
                  ),
                  AppSizedBoxes.sizedboxW10,
                  Text(
                    childText,
                    style: const TextStyle(
                      color: AppColors.greyColor,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    rightText,
                    style: const TextStyle(
                      color: AppColors.greyColor,
                    ),
                  ),
                  Icon(
                    secondicon,
                    color: AppColors.darkGreyColor,
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
