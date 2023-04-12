import 'package:flutter/material.dart';
import 'package:indbytes/constants/colors/app_colors.dart';
import 'package:indbytes/constants/sizedboxes/app_sizedboxes.dart';
import 'package:indbytes/constants/text_styles/app_text_styles.dart';
import 'package:indbytes/service/auth_service/auth_service.dart';
import 'package:indbytes/view/sign_in/widgets/textfromfield.dart';
import 'package:indbytes/view/sign_up/sign_up.dart';
import 'package:provider/provider.dart';

import 'widgets/sign_in_button.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    final authService = Provider.of<AuthService>(context);
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
                        "Sign In",
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
                  controller: emailController,
                  hintText: "Email Address",
                  iconData: Icons.mail,
                  obscureText: false,
                  autoFocus: false,
                  // controller: provider.emailController,
                  // validator: (value) => provider.emailValidation(value),
                ),
                TextFormFieldWidget(
                  controller: passwordController,
                  hintText: "Password",
                  iconData: Icons.lock,
                  obscureText: true,
                  autoFocus: false,
                  // controller: provider.emailController,
                  // validator: (value) => provider.emailValidation(value),
                ),
                //forgot password screen
                TextButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      Text(
                        'Forgot Password ?',
                        style: AppTextStyles.textStyleSub,
                      ),
                    ],
                  ),
                ),
                AppSizedBoxes.sizedboxH30,
                SignInButton(
                  text: "Sign In",
                  onPressed: () {
                    authService.signInWithEmailAndPassword(
                      emailController.text,
                      passwordController.text,
                    );
                  },
                ),
                AppSizedBoxes.sizedboxH15,
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account ?"),
                    TextButton(
                      child: const Text(
                        'Sign up',
                        style: TextStyle(
                          fontSize: 18,
                          color: AppColors.redColor,
                        ),
                      ),
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(
                            builder: (context) => const SignUp(),
                          ),
                        );
                      },
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
