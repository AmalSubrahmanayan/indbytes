import 'package:flutter/material.dart';
import 'package:indbytes/constants/sizedboxes/app_sizedboxes.dart';
import 'package:indbytes/constants/text_styles/app_text_styles.dart';
import 'package:indbytes/view/sign_in/widgets/sign_in_button.dart';
import 'package:indbytes/view/widgets/second_bottom_list.dart';

class SecondBottomSheet extends StatelessWidget {
  const SecondBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        child: Text("aaaa"),
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.vertical(
                top: Radius.circular(25),
              ),
            ),
            context: context,
            builder: (BuildContext context) {
              return SizedBox(
                height: 250,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      AppSizedBoxes.sizedboxH20,
                      ScondBottomList(
                        headText: "Member",
                        subText:
                            "You can sign up/ sign in with your \n email address",
                        icon: Icons.person,
                      ),
                      AppSizedBoxes.sizedboxH10,
                      ScondBottomList(
                        headText: "Guest",
                        subText: "User the app without authentication",
                        icon: Icons.person,
                      ),
                    ],
                  ),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
