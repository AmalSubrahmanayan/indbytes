import 'package:flutter/material.dart';
import 'package:indbytes/constants/colors/app_colors.dart';
import 'package:indbytes/constants/sizedboxes/app_sizedboxes.dart';
import 'package:indbytes/constants/text_styles/app_text_styles.dart';
import 'package:indbytes/view/profile/widgets/profile_list.dart';
import 'package:indbytes/view/profile/widgets/profile_row.dart';
import 'package:indbytes/view/sign_in/widgets/sign_in_button.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.whiteColor,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Profile",
          style: AppTextStyles.textStyleHed,
        ),
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(10),
            child: Column(
              children: [
                const ProfileRow(),
                AppSizedBoxes.sizedboxH30,
                Column(
                  children: [
                    ProfileList(
                      headText: "Your Activities",
                      childText: "Bookmark List",
                      icon: Icons.turned_in,
                      rightText: "0",
                    ),
                  ],
                ),
                ProfileList(
                  headText: "Theme",
                  childText: "Switch to Dart theme",
                  icon: Icons.nightlight_sharp,
                  rightText: "",
                ),
                ProfileList(
                  headText: "Account",
                  childText: "Change Password",
                  icon: Icons.lock,
                  rightText: "",
                  secondicon: Icons.chevron_right_sharp,
                ),
                ProfileList(
                  headText: "Others",
                  childText: "Privacy Policy & Terms",
                  icon: Icons.privacy_tip_rounded,
                  rightText: "",
                  secondicon: Icons.chevron_right_sharp,
                ),
                ProfileList(
                  headText: "",
                  childText: "About",
                  icon: Icons.info,
                  rightText: "",
                  secondicon: Icons.chevron_right_sharp,
                ),
                AppSizedBoxes.sizedboxH10,
                SignInButton(text: "Sign Out", onPressed: () {})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
