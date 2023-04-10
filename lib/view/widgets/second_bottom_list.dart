import 'package:flutter/material.dart';
import 'package:indbytes/constants/sizedboxes/app_sizedboxes.dart';
import 'package:indbytes/constants/text_styles/app_text_styles.dart';

class ScondBottomList extends StatelessWidget {
  const ScondBottomList(
      {super.key,
      required this.headText,
      required this.subText,
      required this.icon});
  final String headText;
  final String subText;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(),
        borderRadius: BorderRadius.circular(10),
      ),
      height: 80,
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          children: [
            Icon(
              icon,
              // Icons.person,
            ),
            AppSizedBoxes.sizedboxW5,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  headText,
                  // "Member",
                  style: AppTextStyles.textStyleProfileName,
                ),
                Text(
                  subText,
                  // "You can sign up/ sign in with your email address",
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                  style: AppTextStyles.textStyleProfileEmail,
                )
              ],
            ),
            Spacer(),
            Icon(
              Icons.chevron_right_rounded,
            ),
          ],
        ),
      ),
    );
  }
}
