import 'package:flutter/material.dart';
import 'package:indbytes/constants/colors/app_colors.dart';
import 'package:indbytes/constants/sizedboxes/app_sizedboxes.dart';
import 'package:indbytes/constants/text_styles/app_text_styles.dart';

class ProfileRow extends StatelessWidget {
  const ProfileRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const CircleAvatar(
          radius: 34.0,
          backgroundImage: NetworkImage('https://via.placeholder.com/150'),
          backgroundColor: Colors.transparent,
        ),
        AppSizedBoxes.sizedboxW10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "kjlhklajshd",
              style: AppTextStyles.textStyleProfileName,
            ),
            AppSizedBoxes.sizedboxH5,
            const Text(
              "kjlhklajshsdvsdvsdsdvd",
              style: AppTextStyles.textStyleProfileEmail,
            ),
            AppSizedBoxes.sizedboxH5,
            SizedBox(
              height: 22,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.accentsColor,
                ),
                child: Wrap(
                  children: const [
                    Icon(
                      Icons.person,
                      color: AppColors.blackColor,
                      size: 16.0,
                    ),
                    AppSizedBoxes.sizedboxW10,
                    Text(
                      "Premium",
                      style: TextStyle(
                          color: AppColors.blackColor,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const Spacer(),
        Padding(
          padding: const EdgeInsets.only(bottom: 40),
          child: CircleAvatar(
            backgroundColor: AppColors.lightGreyColor,
            radius: 15,
            child: IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.edit,
                color: AppColors.blackColor,
                size: 16,
              ),
            ),
          ),
        )
      ],
    );
  }
}
