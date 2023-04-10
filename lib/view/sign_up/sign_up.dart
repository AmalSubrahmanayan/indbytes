import 'package:flutter/material.dart';
import 'package:indbytes/constants/colors/app_colors.dart';
import 'package:indbytes/constants/sizedboxes/app_sizedboxes.dart';
import 'package:indbytes/constants/text_styles/app_text_styles.dart';
import 'package:indbytes/view/sign_in/widgets/sign_in_button.dart';
import 'package:indbytes/view/sign_in/widgets/textfromfield.dart';

class SignUp extends StatelessWidget {
  const SignUp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Center(
                  child: Column(
                    children: const [
                      AppSizedBoxes.sizedboxH60,
                      Text(
                        "Sign Up",
                        style: AppTextStyles.textStyleHed,
                      ),
                      AppSizedBoxes.sizedboxH10,
                      Center(
                        child: Text(
                          "Enter your user information below or continue with one of your social accounts",
                          textAlign: TextAlign.center,
                          style: AppTextStyles.textStyleSub,
                        ),
                      ),
                    ],
                  ),
                ),
                AppSizedBoxes.sizedboxH30,
                //  TextFormField
                TextFormFieldWidget(
                  hintText: "Name",
                  iconData: Icons.person,
                  obscureText: false,
                  autoFocus: false,
                  // controller: provider.emailController,
                  // validator: (value) => provider.emailValidation(value),
                ),
                TextFormFieldWidget(
                  hintText: "Email Address",
                  iconData: Icons.mail,
                  obscureText: false,
                  autoFocus: false,
                  // controller: provider.emailController,
                  // validator: (value) => provider.emailValidation(value),
                ),
                TextFormFieldWidget(
                  hintText: "Password",
                  iconData: Icons.lock,
                  obscureText: false,
                  autoFocus: false,
                  // controller: provider.emailController,
                  // validator: (value) => provider.emailValidation(value),
                ),
                TextFormFieldWidget(
                  hintText: "Confirm Password",
                  iconData: Icons.lock,
                  obscureText: false,
                  autoFocus: false,
                  // controller: provider.emailController,
                  // validator: (value) => provider.emailValidation(value),
                ),
                //forgot password screen
                Row(
                  children: const [
                    Text(
                      'By signing up,you accept privacy policy & Terms of Service',
                      style: AppTextStyles.textStyleSub,
                    ),
                  ],
                ),
                AppSizedBoxes.sizedboxH30,
                SignInButton(
                  text: "Sign Up",
                  onPressed: () {},
                ),
                AppSizedBoxes.sizedboxH15,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account ?"),
                    TextButton(
                      child: const Text(
                        'Sign in',
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.redColor,
                        ),
                      ),
                      onPressed: () {},
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
