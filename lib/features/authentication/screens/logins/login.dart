import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:login_signup_expense_app/utils/helpers/helper_functions.dart';
import '../../../../common/styles/spacing_styles.dart';
import '../../../../utils/constants/colors.dart';
import '../../../../utils/constants/image_strings.dart';
import '../../../../utils/constants/sizes.dart';
import '../../../../utils/constants/text_strings.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              /// Logo, Title & Sub-Title
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image(
                    height: 150,
                    image: AssetImage(
                        dark ? TImages.lightAppLogo : TImages.darkAppLogo),
                  ),
                  Text(TTexts.loginTitle,
                      style: Theme.of(context).textTheme.headlineMedium),
                  const SizedBox(height: TSizes.sm),
                  Text(TTexts.loginSubtitle,
                      style: Theme.of(context).textTheme.bodyMedium),
                ],
              ),

              /// Form
              Form(
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: TSizes.spaceBtwSections),
                  child: Column(
                    children: [
                      /// Email
                      TextFormField(
                        decoration: const InputDecoration(
                            prefixIcon: Icon(Iconsax.direct_right),
                            labelText: TTexts.email),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields),

                      /// Password
                      TextFormField(
                        decoration: const InputDecoration(
                          prefixIcon: Icon(Iconsax.password_check),
                          labelText: TTexts.password,
                          suffixIcon: Icon(Iconsax.eye_slash),
                        ),
                      ),
                      const SizedBox(height: TSizes.spaceBtwInputFields / 2),

                      /// Remember Me & Forget Password
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            /// Remember Me
                            Row(
                                children: [
                                  Checkbox(value: true, onChanged: (value) {}),
                                  const Text(TTexts.rememberMe),
                                ]
                            ),

                            /// Forget Password
                            TextButton(onPressed: () {}, child: const Text(TTexts.forgetPassword)),
                          ]
                      ),
                      const SizedBox(height: TSizes.spaceBtwSections),

                      ///Sign in Button
                      SizedBox(width: double.infinity, child: ElevatedButton(onPressed: () {}, child: const Text(TTexts.signIn))),
                      const SizedBox(height: TSizes.spaceBtwItems),

                      /// Create Account Button
                      SizedBox(width: double.infinity, child: OutlinedButton(onPressed: () {}, child: const Text(TTexts.createAccount))),
                      const SizedBox(height: TSizes.spaceBtwSections),
                    ],
                  ),
                ),
              ),

              ///Divider
              Row (
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Divider(color: dark? TColors.darkGrey: TColors.grey, thickness: 0.5, indent: 68, endIndent: 5),
                ],
              )

            ],
          ),
        ),
      ),
    );
  }
}
