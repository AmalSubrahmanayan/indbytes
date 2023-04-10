import 'package:flutter/material.dart';
import 'package:indbytes/constants/sizedboxes/app_sizedboxes.dart';
import 'package:indbytes/constants/text_styles/app_text_styles.dart';
import 'package:indbytes/view/sign_in/widgets/sign_in_button.dart';

class FirstBottomSheet extends StatelessWidget {
  const FirstBottomSheet({super.key});

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
                      const Text(
                        "Never miss",
                        style: AppTextStyles.textStyleHed,
                      ),
                      AppSizedBoxes.sizedboxH10,
                      const Text(
                        "New movies & series",
                        style: AppTextStyles.textStyleHed,
                      ),
                      AppSizedBoxes.sizedboxH15,
                      const Text(
                        "Be the first one to watch latest moview and series on movie app",
                        style: AppTextStyles.textStyleProfileEmail,
                      ),
                      AppSizedBoxes.sizedboxH30,
                      Row(
                        children: [
                          SignInButton(
                              text: "GetStaeted",
                              onPressed: () {
                                Navigator.pop(context);
                              }),
                        ],
                      )
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
